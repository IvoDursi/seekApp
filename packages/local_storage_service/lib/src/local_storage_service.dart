import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:hive_flutter/hive_flutter.dart';

class LocalStorageService {
  LocalStorageService([HiveInterface? hiveInterface]) {
    hive = hiveInterface ?? Hive;
  }

  late HiveInterface hive;

  Future<void> setUpHive() async {
    await hive.initFlutter();

    await hive.openBox<String>('appBox');
  }

  Future<void> delete({
    required String key,
  }) async {
    await hive.box<String>('appBox').delete(key);
  }

  Either<void, T?> get<T>({
    required String key,
    required T Function(Map<String, dynamic> json) fromJson,
  }) {
    String? value;
    try {
      value = hive.box<String>('appBox').get(key);
      if (value == null) {
        return Right(null);
      }
    } catch (e) {
      return const Left(null);
    }

    try {
      final json = jsonDecode(value) as Map<String, dynamic>;
      return Right(fromJson(json));
    } catch (e) {
      return const Left(null);
    }
  }

  Future<Either<void, void>> save({
    required String key,
    required Map<String, dynamic> value,
  }) async {
    try {
      final encoded = jsonEncode(value);
      await hive.box<String>('appBox').put(key, encoded);
      return const Right(null);
    } catch (e) {
      return const Left(null);
    }
  }
}
