// import 'package:classic/common/object/logger/logger.dart';
// import 'package:classic/common/util/encoding_util.dart';
// import 'package:classic/data/const/code.dart';
// import 'package:classic/data/model/user.dart';
// import 'package:classic/data/dto/login_dto.dart';
// import 'package:classic/common/module/api/result.dart';
// import 'package:classic/data/repository/user/user_repository.dart';
// import 'package:firebase_auth/firebase_auth.dart' as auth;

// class UserRepositoryFirebase implements UserRepository {
//   @override
//   Future<Result<bool>> isUniqueId(String id) async {
//     return Result.success(true);
//   }

//   @override
//   Future<Result<bool>> isUniqueNickname(String nickname) async {
//     return Result.success(true);
//   }

//   @override
//   Future<Result<LoginDTO>> login(String email, String password) async {
//     throw UnimplementedError();
//   }

//   @override
//   Future<Result<bool>> register(User user) async {
//     try {
//       auth.UserCredential authUser =
//           await auth.FirebaseAuth.instance.createUserWithEmailAndPassword(
//         email: user.email,
//         password: EncodingUtil.passwordEncode(user.password!),
//       );
//       await authUser.user?.sendEmailVerification();

//       return Result.success(true);
//     } on auth.FirebaseAuthException catch (e) {
//       if (e.code == 'weak-password') {
//         return Result.failure(
//             CODE_USER_REGISTER_WEAK_PASSWORD, "보안에 취약한 비밀번호입니다.");
//       } else if (e.code == 'email-already-in-use') {
//         return Result.failure(
//             CODE_USER_REGISTER_EMAIL_ALREADY_IN_USE, "이미 가입된 이메일입니다.");
//       }
//       if (e.code == 'operation-not-allowed') {
//         return Result.failure(
//             CODE_USER_REGISTER_OPERATION_NOT_ALLOWED, "권한이 없습니다.");
//       } else if (e.code == 'invalid-email') {
//         return Result.failure(
//             CODE_USER_REGISTER_INVALID_EMAIL, "이메일 형식에 맞지 않습니다.");
//       } else {
//         rethrow;
//       }
//     } catch (e) {
//       l.e(e);
//       return Result.failure(Result.CODE_FAILURE, '회원 가입에 실패하였습니다.');
//     }
//   }
// }
