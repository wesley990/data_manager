import 'dart:async';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:data_manager/src/application/services/i_connectivity_service.dart';
import 'package:data_manager/src/data/services/network/connectivity_service_impl.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

class MockConnectivity extends Mock implements Connectivity {
  final _controller = StreamController<List<ConnectivityResult>>.broadcast();

  @override
  Stream<List<ConnectivityResult>> get onConnectivityChanged =>
      _controller.stream;

  void emitConnectivityChange(List<ConnectivityResult> result) {
    _controller.add(result);
  }

  @override
  Future<List<ConnectivityResult>> checkConnectivity() async {
    return super.noSuchMethod(
      Invocation.method(#checkConnectivity, []),
      returnValue: Future.value([ConnectivityResult.none]),
    ) as Future<List<ConnectivityResult>>;
  }

  void dispose() {
    _controller.close();
  }
}

void main() {
  late MockConnectivity mockConnectivity;
  late IConnectivityService connectivityService;

  setUp(() {
    mockConnectivity = MockConnectivity();
    connectivityService =
        ConnectivityServiceImpl(connectivity: mockConnectivity);
  });

  tearDown(() {
    connectivityService.dispose();
    mockConnectivity.dispose();
  });

  group('ConnectivityService', () {
    test('initializes with default values', () async {
      when(mockConnectivity.checkConnectivity())
          .thenAnswer((_) async => [ConnectivityResult.none]);

      final result = await connectivityService.isOnline();
      expect(result, false);
    });

    test('isOnline returns true when connected', () async {
      when(mockConnectivity.checkConnectivity())
          .thenAnswer((_) async => [ConnectivityResult.wifi]);

      final result = await connectivityService.isOnline();
      expect(result, true);
    });

    test('isOnline returns false when disconnected', () async {
      when(mockConnectivity.checkConnectivity())
          .thenAnswer((_) async => [ConnectivityResult.none]);

      final result = await connectivityService.isOnline();
      expect(result, false);
    });

    test('checkConnectionQuality returns quality based on latency', () async {
      final quality = await connectivityService.checkConnectionQuality();
      expect(quality, isA<ConnectionQuality>());
    });

    // test('connectivityStatus emits correct status changes', () async {
    //   when(mockConnectivity.checkConnectivity())
    //       .thenAnswer((_) async => [ConnectivityResult.wifi]);

    //   final statusStream = connectivityService.connectivityStatus;
    //   mockConnectivity.emitConnectivityChange([ConnectivityResult.wifi]);

    //   await expectLater(
    //     statusStream,
    //     emits(predicate<(bool, ConnectionQuality)>(
    //       (result) => result.$1 == true && result.$2 != ConnectionQuality.none,
    //     )),
    //   );
    // });

    test('retry mechanism handles failures correctly', () async {
      var attempts = 0;
      when(mockConnectivity.checkConnectivity()).thenAnswer((_) async {
        attempts++;
        if (attempts < 2) throw Exception('Test error');
        return [ConnectivityResult.wifi];
      });

      final result = await connectivityService.isOnline();
      expect(result, true);
      expect(attempts, 2);
    });

    test('handles maximum retry attempts', () async {
      when(mockConnectivity.checkConnectivity()).thenAnswer((_) async {
        throw Exception('Persistent error');
      });

      expect(
        () => connectivityService.isOnline(),
        throwsException,
      );
    });

    // test('handles rapid connectivity changes', () async {
    //   when(mockConnectivity.checkConnectivity())
    //       .thenAnswer((_) async => [ConnectivityResult.wifi]);

    //   final statusStreamTest = connectivityService.connectivityStatus.take(2);

    //   mockConnectivity.emitConnectivityChange([ConnectivityResult.wifi]);
    //   mockConnectivity.emitConnectivityChange([ConnectivityResult.none]);

    //   await expectLater(
    //     statusStreamTest,
    //     emitsInOrder([
    //       predicate<(bool, ConnectionQuality)>((result) => result.$1 == true),
    //       predicate<(bool, ConnectionQuality)>((result) => result.$1 == false),
    //     ]),
    //   );
    // });

    test('maintains last known status correctly', () async {
      when(mockConnectivity.checkConnectivity())
          .thenAnswer((_) async => [ConnectivityResult.wifi]);

      await connectivityService.isOnline();
      await connectivityService.checkConnectionQuality();

      expect(await connectivityService.isOnline(), true);
      expect(await connectivityService.checkConnectionQuality(),
          isNot(ConnectionQuality.none));
    });

    test('handles network timeouts', () async {
      when(mockConnectivity.checkConnectivity())
          .thenAnswer((_) async => throw TimeoutException('Network timeout'));

      expect(
        () => connectivityService.isOnline(),
        throwsA(isA<TimeoutException>()),
      );
    });

    test('handles network timeout errors gracefully', () async {
      when(mockConnectivity.checkConnectivity())
          .thenAnswer((_) async => throw TimeoutException('Network timeout'));

      await expectLater(
        () => connectivityService.isOnline(),
        throwsA(isA<TimeoutException>()),
      );
    });

    test('stops retrying after max attempts', () async {
      var attempts = 0;
      when(mockConnectivity.checkConnectivity()).thenAnswer((_) async {
        attempts++;
        throw Exception('Persistent error');
      });

      await expectLater(
        () => connectivityService.isOnline(),
        throwsException,
      );
      expect(attempts, 3); // Verifies exactly 3 attempts were made
    });

    test('properly closes streams on dispose', () async {
      final statusStream = connectivityService.connectivityStatus;

      // Emit one value to ensure stream is active
      mockConnectivity.emitConnectivityChange([ConnectivityResult.wifi]);
      await Future.delayed(Duration(milliseconds: 100));

      // Dispose and verify stream closes
      connectivityService.dispose();
      mockConnectivity.dispose();

      await expectLater(
        statusStream,
        emitsThrough(emitsDone),
      );
    });
  });
}
