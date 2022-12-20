import 'package:bloc/bloc.dart';
import 'package:classic/bloc/composer/register/composer_register_event.dart';
import 'package:classic/bloc/composer/register/composer_register_state.dart';
import 'package:classic/common/config/di.dart';
import 'package:classic/common/object/logger/logger.dart';
import 'package:classic/common/object/result/result.dart';
import 'package:classic/common/object/status/status.dart';
import 'package:classic/data/const/code.dart';
import 'package:classic/data/repository/composer/composer_repository.dart';

class ComposerRegisterBloc
    extends Bloc<ComposerRegisterEvent, ComposerRegisterState> {
  ComposerRegisterBloc()
      : _composerRegisterRepository = di.get<ComposerRepository>(),
        super(ComposerRegisterState(status: StatusInit())) {
    on<ComposerRegisterEventRegister>(_register);
    on<ComposerRegisterEventRegisterMusicalForm>(_registerMusicalForm);
  }

  final ComposerRepository _composerRegisterRepository;

  _register(ComposerRegisterEventRegister event, Emitter emit) async {
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

  _registerMusicalForm(
      ComposerRegisterEventRegisterMusicalForm event, Emitter emit) async {
    try {
      emit(state.copyWith(status: StatusLoading()));
      final result = await _composerRegisterRepository.postMusicalForm(
          event.composerId, event.musicalForm);

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
