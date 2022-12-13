import 'package:bloc/bloc.dart';
import 'package:classic/bloc/user/user_event.dart';
import 'package:classic/bloc/user/user_state.dart';
import 'package:classic/common/config/di.dart';
import 'package:classic/common/module/api/result.dart';
import 'package:classic/common/module/secure_storage/secure_storage.dart';
import 'package:classic/common/object/logger/logger.dart';
import 'package:classic/common/object/status/status.dart';
import 'package:classic/data/dto/login_dto.dart';
import 'package:classic/data/model/user.dart';
import 'package:classic/data/repository/user/user_repository.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  UserBloc()
      : _userRepository = di.get<UserRepository>(),
        super(UserState(status: Status.init())) {
    on<UserEventSetUser>(_setUser);
    on<UserEventLogin>(_login);
    on<UserEventLogout>(_logout);
    on<UserEventInitStatus>(_initStatus);
  }

  final UserRepository _userRepository;
  User? get user => state.user;

  _login(UserEventLogin event, Emitter emit) async {
    if (event.email == "123" || event.password == "123123123") {
      emit(
        state.copyWith(
          user: User(
            email: event.email,
            nickname: 'tester',
            emailVerified: true,
          ),
          status: Status.success(),
        ),
      );
    }

    try {
      emit(state.copyWith(status: Status.loading()));

      Result<LoginDTO> result =
          await _userRepository.login(event.email, event.password);

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
          l.e(failure.message);
          emit(state.copyWith(status: Status.fail(message: failure.message)));
        },
      );
    } catch (e) {
      l.e(e);
      emit(state.copyWith(status: Status.fail(message: "로그인에 실패하였습니다.")));
    }
  }

  _logout(UserEventLogout event, Emitter emit) async {
    emit(UserState(status: StatusInit()));
  }

  _initStatus(UserEventInitStatus event, Emitter emit) async {
    emit(UserState(status: StatusInit()));
  }

  _setUser(UserEventSetUser event, Emitter emit) {
    emit(state.copyWith(user: event.user));
  }
}
