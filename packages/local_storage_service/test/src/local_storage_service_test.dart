// ignore_for_file: prefer_const_constructors

import 'package:flutter_test/flutter_test.dart';
import 'package:local_storage_service/local_storage_service.dart';

void main() {
  group('LocalStorageService', () {
    test('can be instantiated', () {
      expect(LocalStorageService(), isNotNull);
    });
  });
}
