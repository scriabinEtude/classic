import 'package:bloc/bloc.dart';
import 'package:classic/bloc/register/register_event.dart';
import 'package:classic/common/config/di.dart';
import 'package:classic/common/module/api/result.dart';
import 'package:classic/common/object/logger/logger.dart';
import 'package:classic/common/object/status/status.dart';
import 'package:classic/data/const/code.dart';
import 'package:classic/data/model/user.dart';
import 'package:classic/data/repository/user/user_repository.dart';
import 'register_state.dart';

class RegisterBloc extends Bloc<RegisterEvent, RegisterState> {
  RegisterBloc()
      : _userRepository = di.get<UserRepository>(),
        super(RegisterState(status: Status.init())) {
    on<RegisterEventRegist>(_regist);
  }

  final UserRepository _userRepository;

  _regist(RegisterEventRegist event, Emitter emit) async {
    emit(state.copyWith(status: Status.loading()));
    try {
      final isUniqueEmail = await _userRepository.isUniqueEmail(event.email);
      isUniqueEmail.whenOrNull(
        failure: (status, message) {
          l.e(message);
          emit(state.copyWith(status: Status.fail(message: message)));
        },
      );

      final isUniqueNicname =
          await _userRepository.isUniqueNickname(event.nickname);
      isUniqueNicname.whenOrNull(
        failure: (status, message) {
          l.e(message);
          emit(state.copyWith(status: Status.fail(message: message)));
        },
      );

      if (isUniqueEmail is Success && isUniqueNicname is Success) {
        Result<bool> result = await _userRepository.register(User(
          email: event.email,
          nickname: event.nickname,
          password: event.password,
          emailVerified: false,
        ));

        result.map(
          success: (success) {
            emit(
              state.copyWith(
                user: User(
                  email: event.email,
                  nickname: event.nickname,
                  password: event.password,
                  emailVerified: false,
                ),
                done: true,
                status: Status.success(code: CODE_USER_REGISTER_SUCCESS),
              ),
            );
          },
          failure: (failure) {
            l.e(failure.message);
            emit(state.copyWith(status: Status.fail(message: failure.message)));
          },
        );
      }
    } catch (e) {
      l.e(e);
      emit(state.copyWith(status: Status.fail(message: "회원 가입에 실패했습니다.")));
    }
  }
}
