import 'package:bloc/bloc.dart';
import 'package:classic/bloc/user/user_event.dart';
import 'package:classic/bloc/user/user_state.dart';
import 'package:classic/common/config/di.dart';
import 'package:classic/common/object/result/result.dart';
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
    on<UserEventAutoLogin>(_autoLogin);
  }

  final UserRepository _userRepository;
  final _userStorage = UserStorage();
  User? get user => state.user;

  _login(UserEventLogin event, Emitter emit) async {
    try {
      emit(state.copyWith(status: Status.loading()));

      Result<LoginDTO> result =
          await _userRepository.login(event.email, event.password);

      result.map(
        success: (success) {
          _userStorage.userSet(success.data.user);
          emit(
            state.copyWith(
              user: success.data.user,
              status: Status.success(),
            ),
          );
          JWTStorage().jwtSet(success.data.jwt);
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
    _userStorage.userRemove();
    emit(UserState(status: StatusInit()));
  }

  _initStatus(UserEventInitStatus event, Emitter emit) async {
    emit(UserState(status: StatusInit()));
  }

  _setUser(UserEventSetUser event, Emitter emit) {
    emit(state.copyWith(user: event.user));
  }

  _autoLogin(UserEventAutoLogin event, Emitter emit) async {
    String? userId = await _userStorage.userGet();
    try {
      if (userId != null) {
        Result<LoginDTO> result = await _userRepository.loginById(userId);
        result.whenOrNull(
          success: (loginDTO) {
            emit(
              state.copyWith(
                user: loginDTO.user,
              ),
            );
          },
          failure: (status, message) {
            _userStorage.userRemove();
            l.dl('autologin failure', message);
          },
        );
      }
    } catch (e) {
      l.dl('autoLogin error', e);
      _userStorage.userRemove();
    }
  }
}
