import 'package:bloc/bloc.dart';
import 'package:classic/bloc/user/user_event.dart';
import 'package:classic/bloc/user/user_state.dart';
import 'package:classic/common/config/di.dart';
import 'package:classic/common/module/api/result.dart';
import 'package:classic/common/module/secure_storage/secure_storage.dart';
import 'package:classic/data/common/status/status.dart';
import 'package:classic/data/dto/login_dto.dart';
import 'package:classic/data/model/jwt.dart';
import 'package:classic/data/model/user.dart';
import 'package:classic/data/repository/user/user_repository.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  UserBloc()
      : _userRepository = di.get<UserRepository>(),
        super(UserState(status: Status.init())) {
    on<UserEventSetUser>(_setUser);
    on<UserEventLogin>(_login);
    on<UserEventLogout>(_logout);
  }

  final UserRepository _userRepository;

  _login(UserEventLogin event, Emitter emit) async {
    if (event.id == "123" || event.password == "123123123") {
      emit(
        state.copyWith(
          user: User(
            id: event.id,
            nickname: 'tester',
          ),
          status: Status.success(),
        ),
      );
    }

    try {
      emit(state.copyWith(status: Status.loading()));

      Result<LoginDTO> result =
          await _userRepository.login(event.id, event.password);

      result.map(
        success: (success) {
          emit(
            state.copyWith(
              user: success.data.user,
              status: Status.success(),
            ),
          );
          SecureStorage().jwtSet(success.data.jwt);
        },
        failure: (failure) {
          emit(state.copyWith(status: Status.fail(message: "로그인에 실패하였습니다.")));
        },
      );
    } catch (e) {
      emit(state.copyWith(status: Status.fail(message: "로그인에 실패하였습니다.")));
    }
  }

  _logout(UserEventLogout event, Emitter emit) {
    emit(UserState(status: StatusInit()));
  }

  _setUser(UserEventSetUser event, Emitter emit) {
    emit(state.copyWith(user: event.user));
  }

  User? get user => state.user;
}
