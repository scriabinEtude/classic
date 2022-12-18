import 'package:bloc/bloc.dart';
import 'package:classic/bloc/composer/register/composer_register_event.dart';
import 'package:classic/bloc/composer/register/composer_register_state.dart';
import 'package:classic/common/config/di.dart';
import 'package:classic/common/object/logger/logger.dart';
import 'package:classic/common/object/result/result.dart';
import 'package:classic/common/object/status/status.dart';
import 'package:classic/data/const/code.dart';
import 'package:classic/data/repository/composer/register/composer_register_repository.dart';

class ComposerRegisterBloc
    extends Bloc<ComposerRegisterEvent, ComposerRegisterState> {
  ComposerRegisterBloc()
      : _composerRegisterRepository = di.get<ComposerRegisterRepository>(),
        super(ComposerRegisterState(status: StatusInit())) {
    on<ComposerRegisterEvent>(_register);
  }

  final ComposerRegisterRepository _composerRegisterRepository;

  _register(ComposerRegisterEvent event, Emitter emit) async {
    try {
      emit(state.copyWith(status: StatusLoading()));
      final result = await _composerRegisterRepository.register(event.composer);

      result.when(
        failure: (status, message) {
          emit(state.copyWith(
              status: Status.fail(code: status, message: message)));
        },
        success: (videos) async {
          emit(state.copyWith(
              status: StatusSuccess(code: CODE_COMPOSER_REGISTER_SUCCESS)));
        },
      );
    } catch (e) {
      if (e is Failure) {
        emit(state.copyWith(
            status: Status.fail(code: e.status, message: e.message)));
      } else {
        l.el('composer _register catch', e);
        emit(state.copyWith(status: Status.fail(message: "작곡가 등록에 실패하였습니다.")));
      }
    }
  }
}
