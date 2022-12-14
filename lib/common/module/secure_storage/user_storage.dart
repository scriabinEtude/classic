// ignore_for_file: non_constant_identifier_names

part of 'secure_storage.dart';

class UserStorage extends SecureStorage {
  final String KEY_USER_ID = 'user_id';

  Future<void> userSet(User user) async {
    return await super._secureStorage.write(
          key: KEY_USER_ID,
          value: user.id,
        );
  }

  Future<void> userRemove() async {
    return await _secureStorage.delete(key: KEY_USER_ID);
  }

  Future<String?> userGet() async {
    return await _secureStorage.read(key: KEY_USER_ID);
  }

  // singleton
  static final UserStorage _ = UserStorage._internal();

  factory UserStorage() {
    return _;
  }

  UserStorage._internal();
}
