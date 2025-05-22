import 'package:flutter_test/flutter_test.dart';
import 'package:data_manager/src/domain/core/entity_config.dart';

void main() {
  group('EntityConfig path handling edge cases', () {
    late EntityConfig config;
    
    setUp(() {
      config = EntityConfig.testing();
    });
    
    group('normalizePath', () {
      test('handles empty and whitespace paths', () {
        expect(config.normalizePath(''), equals(''));
        expect(config.normalizePath(' '), equals(''));
        expect(config.normalizePath('\t\n'), equals(''));
      });
      
      test('handles paths with just separators', () {
        expect(config.normalizePath('/'), equals(''));
        expect(config.normalizePath('//'), equals(''));
        expect(config.normalizePath('///'), equals(''));
      });
      
      test('removes leading and trailing separators', () {
        expect(config.normalizePath('/a/b/c/'), equals('a/b/c'));
        expect(config.normalizePath('///a/b/c///'), equals('a/b/c'));
      });
      
      test('collapses consecutive separators', () {
        expect(config.normalizePath('a//b///c'), equals('a/b/c'));
      });
    });
    
    group('getParentPath', () {
      test('handles empty paths', () {
        expect(config.getParentPath(''), equals(''));
        expect(config.getParentPath(' '), equals(''));
      });
      
      test('handles root level paths', () {
        expect(config.getParentPath('file.txt'), equals(''));
        expect(config.getParentPath('/file.txt'), equals(''));
      });
      
      test('handles nested paths', () {
        expect(config.getParentPath('a/b/c'), equals('a/b'));
        expect(config.getParentPath('a/b/c/'), equals('a/b'));
      });
    });
    
    group('getNameFromPath', () {
      test('handles empty paths', () {
        expect(config.getNameFromPath(''), equals(''));
        expect(config.getNameFromPath(' '), equals(''));
      });
      
      test('handles paths without separators', () {
        expect(config.getNameFromPath('file.txt'), equals('file.txt'));
      });
      
      test('handles paths with separators', () {
        expect(config.getNameFromPath('a/b/c'), equals('c'));
        expect(config.getNameFromPath('a/b/c/'), equals('c'));
      });
    });
    
    group('isParentPath', () {
      test('handles empty paths', () {
        expect(config.isParentPath('', ''), isFalse);
        expect(config.isParentPath('', 'a/b/c'), isTrue);
        expect(config.isParentPath('a/b/c', ''), isFalse);
      });
      
      test('handles identical paths', () {
        expect(config.isParentPath('a/b/c', 'a/b/c'), isFalse);
      });
      
      test('identifies true parent paths', () {
        expect(config.isParentPath('a/b', 'a/b/c'), isTrue);
        expect(config.isParentPath('a', 'a/b/c'), isTrue);
      });
      
      test('rejects false parent paths', () {
        expect(config.isParentPath('a/b/c', 'a/b'), isFalse);
        expect(config.isParentPath('a/d', 'a/b/c'), isFalse);
        expect(config.isParentPath('a/bd', 'a/b/c'), isFalse);
      });
    });
    
    group('joinPath', () {
      test('handles empty segments', () {
        expect(config.joinPath([]), equals(''));
        expect(config.joinPath(['', '', '']), equals(''));
      });
      
      test('handles mixed empty and non-empty segments', () {
        expect(config.joinPath(['a', '', 'b']), equals('a/b'));
        expect(config.joinPath(['', 'a', 'b', '']), equals('a/b'));
      });
      
      test('joins valid segments correctly', () {
        expect(config.joinPath(['a', 'b', 'c']), equals('a/b/c'));
      });
    });
  });
}