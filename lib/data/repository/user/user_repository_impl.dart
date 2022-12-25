import 'package:classic/common/util/encoding_util.dart';
import 'package:classic/data/const/code.dart';
import 'package:classic/data/const/db_collections.dart';
import 'package:classic/data/dto/login_dto.dart';
import 'package:classic/data/model/jwt.dart';
import 'package:classic/data/model/user.dart';
import 'package:classic/common/object/result/result.dart';
import 'package:classic/data/repository/user/user_repository.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class UserRepositoryImpl extends UserRepository {
  final FirebaseFirestore client;
  UserRepositoryImpl(this.client);

  @override
  Future<Result<bool>> isUniqueEmail(String email) async {
    final result = await client
        .collection(COL_USER)
        .where('email', isEqualTo: email)
        .get();
    return result.docs.isEmpty
        ? Success(true)
        : Failure(CODE_USER_REGISTER_EMAIL_ALREADY_IN_USE, '중복된 이메일 입니다.');
  }

  @override
  Future<Result<bool>> isUniqueNickname(String nickname) async {
    final result = await client
        .collection(COL_USER)
        .where('nickname', isEqualTo: nickname)
        .get();
    return result.docs.isEmpty
        ? Success(true)
        : Failure(CODE_USER_REGISTER_NICKNAME_DUPLICATED, '닉네임이 이미 사용중입니다.');
  }

  @override
  Future<Result<bool>> register(User user) async {
    await client.collection(COL_USER).doc(user.id).set(user
        .copyWith(password: EncodingUtil.passwordEncode(user.password!))
        .toJson());
    return Success(true);
  }

  @override
  Future<Result<LoginDTO>> login(String email, String password) async {
    final result = await client
        .collection(COL_USER)
        .where('email', isEqualTo: email)
        .get();

    if (result.docs.isEmpty) {
      return Failure(CODE_USER_LOGIN_FAILD_EMAIL_NOT_FOUND, '등록되지 않은 계정입니다.');
    } else {
      password = EncodingUtil.passwordEncode(password);

      final userEqualPassword = result.docs
          .map((element) => User.fromJson(element.data()))
          .where((element) => element.password == password);
      if (userEqualPassword.isEmpty) {
        return Failure(CODE_USER_LOGIN_FAILD_PASSWORD_NOT_MATCH, '패스워드가 다릅니다.');
      } else {
        return Success(LoginDTO(
            jwt: JWT(accessToken: 'not impl'), user: userEqualPassword.first));
      }
    }
  }

  @override
  Future<Result<LoginDTO>> loginById(String id) async {
    final result = await client.collection(COL_USER).doc(id).get();
    if (result.exists) {
      return Success(
        LoginDTO(
          user: User.fromJson(result.data()!),
          jwt: JWT(accessToken: 'not impl'),
        ),
      );
    } else {
      return Failure(CODE_USER_LOGIN_FAILD_ID_NOT_MATCH, 'ID가 일치하지 않습니다.');
    }
  }
}
