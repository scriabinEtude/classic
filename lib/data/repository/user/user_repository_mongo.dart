// // ignore_for_file: constant_identifier_names

// import 'package:classic/common/util/encoding_util.dart';
// import 'package:classic/data/const/code.dart';
// import 'package:classic/data/dto/login_dto.dart';
// import 'package:classic/data/model/user.dart';
// import 'package:classic/data/model/jwt.dart';
// import 'package:classic/common/module/api/result.dart';
// import 'package:classic/data/repository/user/user_repository.dart';
// import 'package:mongo_dart/mongo_dart.dart';

// class UserRepositoryMongo implements UserRepository {
//   static const String USER_COLLECTION = "user";
//   final Db db;
//   final DbCollection collection;
//   UserRepositoryMongo(this.db) : collection = db.collection(USER_COLLECTION);

//   @override
//   Future<Result<bool>> isUniqueId(String id) async {
//     if (await collection.findOne(where.eq("id", id)) == null) {
//       return Result<bool>.success(true);
//     } else {
//       return Result<bool>.failure(Result.CODE_FAILURE, "아이디가 중복되었습니다.");
//     }
//   }

//   @override
//   Future<Result<bool>> isUniqueNickname(String nickname) async {
//     if (await collection.findOne(where.eq("nickname", nickname)) == null) {
//       return Result<bool>.success(true);
//     } else {
//       return Result<bool>.failure(Result.CODE_FAILURE, "닉네임이 중복되었습니다.");
//     }
//   }

//   @override
//   Future<Result<LoginDTO>> login(String id, String password) async {
//     final result = await collection
//         .findOne({'id': id, "password": EncodingUtil.passwordEncode(password)});
//     if (result != null) {
//       return Result.success(
//         LoginDTO(
//           user: User.fromJson(result['user']),
//           jwt: JWT(
//             accessToken: 'tempJWT',
//           ),
//         ),
//       );
//     } else {
//       return Result.failure(Result.CODE_FAILURE, "아이디 또는 비밀번호가 일치하지 않습니다.");
//     }
//   }

//   @override
//   Future<Result<bool>> register(User user) async {
//     user = user.copyWith(
//       password: EncodingUtil.passwordEncode(
//         user.password!,
//       ),
//     );

//     final alreadyOne = await collection.findOne({
//       'id': user.email,
//       "password": user.password,
//     });
//     if (alreadyOne != null) {
//       return Result.failure(CODE_USER_REGISTER_DUPLICATED, "이미 가입된 유저입니다.");
//     } else {
//       final result = await collection.insertOne(user.toJson());
//       if (result.isSuccess) {
//         return Result.success(true);
//       } else {
//         return Result.failure(Result.CODE_FAILURE, "회원가입에 실패하였습니다.");
//       }
//     }
//   }
// }
