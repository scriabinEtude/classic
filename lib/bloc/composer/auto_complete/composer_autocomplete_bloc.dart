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
      final result =
          await _composerRepository.getComposerById(event.composer.id);
      result.when(
        success: (composer) {
          emit(state.copyWith(
            composer: composer,
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
            status: Status.fail(message: "작곡가 목록을 불러오는데 실패하였습니다.")));
      }
    }
  }

  _add(ComposerAutoCompleteEventAdd event, Emitter emit) {
    emit(state.copyWith(
      composers: [...state.composers, event.composer],
    ));
  }

  _selectMusicalForm(
      ComposerAutoCompleteEventSelectMusicalForm event, Emitter emit) {
    emit(state.copyWith(
      musicalForm: event.musicalForm,
    ));
  }

  _updateMusicalForm(
      ComposerAutoCompleteEventUpdateMusicalForm event, Emitter emit) {
    List<Composer> composers = state.composers
        .map((c) => c.id == event.composerId
            ? c.copyWith(musicalForms: [...c.musicalForms, event.musicalForm])
            : c)
        .toList();

    Composer composer = state.composer?.id == event.composerId
        ? state.composer!.copyWith(
            musicalForms: [...state.composer!.musicalForms, event.musicalForm])
        : state.composer!;

    emit(state.copyWith(
      composers: composers,
      composer: composer,
      musicalForm: event.musicalForm,
    ));
  }

  _selectMusic(ComposerAutoCompleteEventSelectMusic event, Emitter emit) {
    emit(state.copyWith(
      music: event.music,
    ));
  }

  _updateMusic(ComposerAutoCompleteEventUpdateMusic event, Emitter emit) {
    List<Composer> composers = state.composers
        .map((c) => c.id == event.composerId
            ? c.copyWith(
                musicalForms: c.musicalForms
                    .map((f) => f.id == event.musicalFormId
                        ? f.copyWith(musics: [event.music, ...f.musics])
                        : f)
                    .toList())
            : c)
        .toList();

    Composer composer = state.composer?.id == event.composerId
        ? state.composer!.copyWith(
            musicalForms: state.composer!.musicalForms
                .map((f) => f.id == event.musicalFormId
                    ? f.copyWith(musics: [event.music, ...f.musics])
                    : f)
                .toList(),
          )
        : state.composer!;

    MusicalForm musicalForm = state.musicalForm?.id == event.musicalFormId
        ? state.musicalForm!
            .copyWith(musics: [event.music, ...state.musicalForm!.musics])
        : state.musicalForm!;

    emit(state.copyWith(
      composers: composers,
      composer: composer,
      musicalForm: musicalForm,
      music: event.music,
    ));
  }

  _resetSelect(ComposerAutoCompleteEventResetSelect event, Emitter emit) {
    emit(ComposerAutoCompleteState(
      status: StatusSuccess(),
      composers: state.composers,
    ));
  }
}
