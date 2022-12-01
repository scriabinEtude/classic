// import 'package:classic/common/module/api/client.dart';
// import 'package:classic/data/dto/login_dto.dart';
// import 'package:classic/data/model/jwt.dart';
// import 'package:classic/data/model/user.dart';
// import 'package:classic/common/module/api/result.dart';
// import 'package:classic/data/repository/user/user_repository.dart';

// class UserRepositoryImpl extends UserRepository {
//   final Client client;
//   UserRepositoryImpl(this.client);

//   @override
//   Future<Result<bool>> isUniqueId(String id) {
//     throw UnimplementedError();
//   }

//   @override
//   Future<Result<bool>> isUniqueNickname(String nickname) {
//     throw UnimplementedError();
//   }

//   @override
//   Future<Result> register(User user) async {
//     return await client.post(url: '/user', data: user.toJson());
//   }

//   @override
//   Future<Result<LoginDTO>> login(String email, String password) async {
//     try {
//       return await client.postParser<JWT>(
//         url: '/session/sign-in',
//         data: {
//           'email': email,
//           'password': password,
//         },
//         parser: JWT.fromJson,
//       );
//     } catch (e) {
//       return Result.failure(500, e.toString());
//     }
//   }
// }
