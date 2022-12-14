// ignore_for_file: non_constant_identifier_names

part of 'secure_storage.dart';

class JWTStorage extends SecureStorage {
  final String KEY_ACCESS_TOKEN = 'access_token';

  Future<void> jwtSet(JWT jwt) async {
    return await super._secureStorage.write(
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
  static final JWTStorage _ = JWTStorage._internal();

  factory JWTStorage() {
    return _;
  }

  JWTStorage._internal();
}
