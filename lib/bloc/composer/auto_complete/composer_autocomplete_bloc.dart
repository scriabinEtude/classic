import 'package:bloc/bloc.dart';
import 'package:classic/bloc/composer/auto_complete/composer_autocomplete_event.dart';
import 'package:classic/bloc/composer/auto_complete/composer_autocomplete_state.dart';
import 'package:classic/common/config/di.dart';
import 'package:classic/common/object/logger/logger.dart';
import 'package:classic/common/object/result/result.dart';
import 'package:classic/common/object/status/status.dart';
import 'package:classic/data/model/composer.dart';
import 'package:classic/data/model/musical_form.dart';
import 'package:classic/data/repository/composer/composer_repository.dart';

class ComposerAutoCompleteBloc
    extends Bloc<ComposerAutoCompleteEvent, ComposerAutoCompleteState> {
  ComposerAutoCompleteBloc()
      : _composerRepository = di.get<ComposerRepository>(),
        super(ComposerAutoCompleteState(status: StatusInit())) {
    on<ComposerAutoCompleteEventInit>(_init);
    on<ComposerAutoCompleteEventAdd>(_add);
    on<ComposerAutoCompleteEventSelect>(_select);
    on<ComposerAutoCompleteEventSelectMusicalForm>(_selectMusicalForm);
    on<ComposerAutoCompleteEventUpdateMusicalForm>(_updateMusicalForm);
    on<ComposerAutoCompleteEventSelectMusic>(_selectMusic);
    on<ComposerAutoCompleteEventUpdateMusic>(_updateMusic);
    on<ComposerAutoCompleteEventResetSelect>(_resetSelect);
    add(ComposerAutoCompleteEvent.init());
  }

  final ComposerRepository _composerRepository;

  _init(ComposerAutoCompleteEventInit event, Emitter emit) async {
    if (state.composers.isNotEmpty) return;

    try {
      emit(state.copyWith(status: StatusLoading()));

      final result = await _composerRepository.getAllComposerSearch();
      result.when(
        success: (composers) {
          emit(state.copyWith(
            composers: composers,
            status: Status.success(),
          ));
        },
        failure: (code, message) {
          l.el('composer autocomplete _init failure', message);
          emit(state.copyWith(status: Status.fail()));
        },
      );
    } catch (e) {
      if (e is Failure) {
        l.el('composer autocomplete _init catch', e.message);
        emit(state.copyWith(
            status: Status.fail(code: e.status, message: e.message)));
      } else {
        l.el('composer autocomplete _init catch', e);
        emit(state.copyWith(
            status: Status.fail(message: "작곡가 목록을 불러오는데 실패하였습니다.")));
      }
    }
  }

  _select(ComposerAutoCompleteEventSelect event, Emitter emit) async {
    try {
      emit(state.copyWith(status: StatusLoading()));
      final result = await _composerRepository
          .getMusicalFormByComposerId(event.composer.id);
      result.when(
        success: (musicalForms) {
          emit(state.copyWith(
            composer: event.composer,
            musicalForms: musicalForms,
            status: Status.success(),
          ));
        },
        failure: (code, message) {
          l.el('composer autocomplete _select failure', message);
          emit(state.copyWith(status: Status.fail()));
        },
      );
    } catch (e) {
      if (e is Failure) {
        l.el('composer autocomplete _select Failure', e.message);
        emit(state.copyWith(
            status: Status.fail(code: e.status, message: e.message)));
      } else {
        l.el('composer autocomplete _select catch', e);
        emit(state.copyWith(
            status: Status.fail(message: "음악 형식 목록을 불러오는데 실패하였습니다.")));
      }
    }
  }

  _add(ComposerAutoCompleteEventAdd event, Emitter emit) {
    emit(state.copyWith(
      composers: [...state.composers, event.composer],
    ));
  }

  _selectMusicalForm(
      ComposerAutoCompleteEventSelectMusicalForm event, Emitter emit) async {
    try {
      emit(state.copyWith(status: StatusLoading()));
      final result = await _composerRepository
          .getMusicByMusicalFormId(event.musicalForm.id);

      result.when(
        success: (musics) {
          emit(state.copyWith(
            musicalForm: event.musicalForm,
            musics: musics,
            status: Status.success(),
          ));
        },
        failure: (code, message) {
          l.el('composer autocomplete _selectMusicalForm failure', message);
          emit(state.copyWith(status: Status.fail()));
        },
      );
    } catch (e) {
      if (e is Failure) {
        l.el('composer autocomplete _select Failure', e.message);
        emit(state.copyWith(
            status: Status.fail(code: e.status, message: e.message)));
      } else {
        l.el('composer autocomplete _select catch', e);
        emit(state.copyWith(
            status: Status.fail(message: "음악 형식 목록을 불러오는데 실패하였습니다.")));
      }
    }
  }

  _updateMusicalForm(
      ComposerAutoCompleteEventUpdateMusicalForm event, Emitter emit) {
    add(ComposerAutoCompleteEvent.select(state.composer!));
  }

  _selectMusic(ComposerAutoCompleteEventSelectMusic event, Emitter emit) {
    emit(state.copyWith(
      music: event.music,
    ));
  }

  _updateMusic(ComposerAutoCompleteEventUpdateMusic event, Emitter emit) {
    add(ComposerAutoCompleteEvent.selectMusicalForm(state.musicalForm!));
  }

  _resetSelect(ComposerAutoCompleteEventResetSelect event, Emitter emit) {
    emit(ComposerAutoCompleteState(
      status: StatusSuccess(),
      composers: state.composers,
    ));
  }
}
