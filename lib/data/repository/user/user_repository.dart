import 'package:classic/common/object/result/result.dart';
import 'package:classic/data/dto/login_dto.dart';
import 'package:classic/data/model/user.dart';

abstract class UserRepository {
  Future<Result<LoginDTO>> login(String email, String password);
  Future<Result<LoginDTO>> loginById(String id);
  Future<Result<bool>> register(User user);
  Future<Result<bool>> isUniqueEmail(String email);
  Future<Result<bool>> isUniqueNickname(String nickname);
}
