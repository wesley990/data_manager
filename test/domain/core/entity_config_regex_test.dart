import 'package:flutter_test/flutter_test.dart';
import 'package:data_manager/src/domain/core/entity_config.dart';

void main() {
  group('EntityConfig._mergeInvalidCharsPatterns', () {
    // We need to use a helper method to access the private static method
    String mergePatterns(String pattern1, String pattern2) {
      // Access the private method via reflection or recreate the test class
      // This is a workaround since we can't directly access private methods
      return EntityConfig.custom()
          .copyWith(invalidPathChars: pattern1)
          .mergeWith(EntityConfig.custom(invalidPathChars: pattern2))
          .invalidPathChars;
    }

    test('merges simple character classes correctly', () {
      final result = mergePatterns('[abc]', '[def]');
      expect(result, '[abcdef]');
    });

    test('handles character ranges', () {
      final result = mergePatterns('[a-c]', '[d-f]');
      expect(result, '[a-f]');
    });

    test('handles overlapping ranges', () {
      final result = mergePatterns('[a-d]', '[c-f]');
      expect(result, '[a-f]');
    });

    test('handles escaped characters', () {
      final result = mergePatterns(r'[\n\t]', r'[\r\f]');
      expect(result.contains('\\n'), isTrue);
      expect(result.contains('\\t'), isTrue);
      expect(result.contains('\\r'), isTrue);
      expect(result.contains('\\f'), isTrue);
    });

    test('handles hex escape sequences', () {
      final result = mergePatterns(r'[\x00-\x0F]', r'[\x10-\x1F]');
      expect(result, r'[\x00-\x1F]');
    });

    test('handles negated character classes', () {
      final result = mergePatterns('[^abc]', '[^def]');
      expect(result.startsWith('[^'), isTrue);
      // The result should only have characters that are in both negated sets
      expect(result.contains('a'), isFalse);
      expect(result.contains('d'), isFalse);
    });

    test('handles mixing negated and non-negated classes', () {
      final result = mergePatterns('[abc]', '[^def]');
      expect(result.startsWith('[^'), isFalse); // Should not be negated
      expect(result.contains('a'), isTrue);
      expect(result.contains('b'), isTrue);
      expect(result.contains('c'), isTrue);
      expect(result.contains('d'), isFalse);
      expect(result.contains('e'), isFalse);
      expect(result.contains('f'), isFalse);
    });

    test('handles empty character classes', () {
      final result = mergePatterns('[]', '[abc]');
      expect(result, '[abc]');
    });

    test('handles non-character class patterns', () {
      final result = mergePatterns('abc', 'def');
      expect(result, '(abc|def)');
    });

    test('falls back to default pattern when invalid regex provided', () {
      final result = mergePatterns('[unclosed', 'invalid\\');
      expect(result, EntityConfigDefaults.invalidPathChars);
    });

    test('merges the default invalid path chars pattern correctly', () {
      final defaultPattern = EntityConfigDefaults.invalidPathChars;
      final result = mergePatterns(defaultPattern, '[xyz]');
      expect(result.contains('x'), isTrue);
      expect(result.contains('y'), isTrue);
      expect(result.contains('z'), isTrue);
      expect(result.contains('<'), isTrue); // From default pattern
    });
  });
}
