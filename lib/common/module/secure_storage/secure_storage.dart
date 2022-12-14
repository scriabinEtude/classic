import 'package:classic/data/model/user.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:classic/data/model/jwt.dart';

part 'jwt_storage.dart';
part 'user_storage.dart';

abstract class SecureStorage {
  final FlutterSecureStorage _secureStorage = const FlutterSecureStorage();
}
