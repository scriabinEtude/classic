import 'package:bloc/bloc.dart';
import 'package:classic/bloc/register/register_event.dart';
import 'package:classic/common/config/di.dart';
import 'package:classic/common/module/api/result.dart';
import 'package:classic/data/common/status/status.dart';
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
          emit(state.copyWith(status: Status.fail(message: "이미 가입한 유저입니다.")));
        },
      );
    } catch (e) {
      emit(state.copyWith(status: Status.fail(message: "회원 가입에 실패했습니다.")));
    }
  }
}
