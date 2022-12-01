// ignore_for_file: constant_identifier_names

import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:classic/data/model/jwt.dart';

class SecureStorage {
  final FlutterSecureStorage _secureStorage = const FlutterSecureStorage();

  static const String KEY_ACCESS_TOKEN = 'access_token';

  Future<void> jwtSet(JWT jwt) async {
    return await _secureStorage.write(
      key: KEY_ACCESS_TOKEN,
      value: jwt.accessToken,
    );
  }

  Future<void> jwtRemove() async {
    return await _secureStorage.delete(key: KEY_ACCESS_TOKEN);
  }

  Future<JWT> jwtGet() async {
    return JWT(
      accessToken: await _secureStorage.read(key: KEY_ACCESS_TOKEN) ?? "",
    );
  }

  // singleton
  static final SecureStorage _ = SecureStorage._internal();

  factory SecureStorage() {
    return _;
  }

  SecureStorage._internal();
}
