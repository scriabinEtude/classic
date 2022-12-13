import 'package:classic/common/module/api/result.dart';
import 'package:classic/data/dto/login_dto.dart';
import 'package:classic/data/model/user.dart';

abstract class UserRepository {
  Future<Result<LoginDTO>> login(String email, String password);
  Future<Result<bool>> register(User user);
  Future<Result<bool>> isUniqueEmail(String email);
  Future<Result<bool>> isUniqueNickname(String nickname);
}
