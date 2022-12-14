import 'package:bloc/bloc.dart';
import 'package:classic/bloc/composer/auto_complete/autocomplete_event.dart';
import 'package:classic/bloc/composer/auto_complete/autocomplete_state.dart';
import 'package:classic/common/config/di.dart';
import 'package:classic/common/object/logger/logger.dart';
import 'package:classic/common/object/result/result.dart';
import 'package:classic/common/object/status/status.dart';
import 'package:classic/data/model/music.dart';
import 'package:classic/data/repository/composer/composer_repository.dart';
import 'package:classic/data/repository/conductor/conductor_repository.dart';
import 'package:classic/data/repository/player/player_repository.dart';

class AutoCompleteBloc extends Bloc<AutoCompleteEvent, AutoCompleteState> {
  AutoCompleteBloc()
      : _composerRepository = di.get<ComposerRepository>(),
        _playerRepository = di.get<PlayerRepository>(),
        _conductorRepository = di.get<ConductorRepository>(),
        super(AutoCompleteState(status: StatusInit())) {
    on<AutoCompleteEventGetComposer>(_init);
    on<AutoCompleteEventAdd>(_add);
    on<AutoCompleteEventSelect>(_select);
    on<AutoCompleteEventSelectMusicalForm>(_selectMusicalForm);
    on<AutoCompleteEventUpdateMusicalForm>(_updateMusicalForm);
    on<AutoCompleteEventSelectMusic>(_selectMusic);
    on<AutoCompleteEventUpdateMusic>(_updateMusic);
    on<AutoCompleteEventResetSelect>(_resetSelect);

    on<AutoCompleteEventGetPlayers>(_getPlayers);
    on<AutoCompleteEventSelectPlayer>(_selectPlayer);
    on<AutoCompleteEventUpdatePlayer>(_updatePlayer);

    on<AutoCompleteEventGetConductors>(_getConductors);
    on<AutoCompleteEventSelectConductor>(_selectConductor);
  }

  final ComposerRepository _composerRepository;
  final PlayerRepository _playerRepository;
  final ConductorRepository _conductorRepository;

  _init(AutoCompleteEventGetComposer event, Emitter emit) async {
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
            status: Status.fail(message: "????????? ????????? ??????????????? ?????????????????????.")));
      }
    }
  }

  _select(AutoCompleteEventSelect event, Emitter emit) async {
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
            status: Status.fail(message: "?????? ?????? ????????? ??????????????? ?????????????????????.")));
      }
    }
  }

  _add(AutoCompleteEventAdd event, Emitter emit) {
    emit(state.copyWith(
      composers: [...state.composers, event.composer],
    ));
  }

  _selectMusicalForm(
      AutoCompleteEventSelectMusicalForm event, Emitter emit) async {
    try {
      emit(state.copyWith(status: StatusLoading()));
      final result = await _composerRepository
          .getMusicByMusicalFormId(event.musicalForm.id);

      result.when(
        success: (musics) {
          emit(state.copyWith(
            musicalForm: event.musicalForm,
            musics: [
              ...musics,
              Music.oneMore(
                  composerId: state.composer!.id,
                  musicalFormId: event.musicalForm.id),
            ],
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
            status: Status.fail(message: "?????? ?????? ????????? ??????????????? ?????????????????????.")));
      }
    }
  }

  _updateMusicalForm(AutoCompleteEventUpdateMusicalForm event, Emitter emit) {
    emit(state
        .copyWith(musicalForms: [...state.musicalForms, event.musicalForm]));
  }

  _selectMusic(AutoCompleteEventSelectMusic event, Emitter emit) {
    emit(state.copyWith(
      music: event.music,
    ));
  }

  _updateMusic(AutoCompleteEventUpdateMusic event, Emitter emit) {
    emit(state.copyWith(musics: [...state.musics, event.music]));
  }

  _resetSelect(AutoCompleteEventResetSelect event, Emitter emit) {
    emit(AutoCompleteState(
      status: StatusSuccess(),
      composers: state.composers,
      conductors: state.conductors,
      musicalForms: state.musicalForms,
      musics: state.musics,
      players: state.players,
    ));
  }

  _getPlayers(AutoCompleteEventGetPlayers event, Emitter emit) async {
    try {
      emit(state.copyWith(status: StatusLoading()));
      final result = await _playerRepository.getPlayers();

      result.when(
        success: (players) {
          emit(state.copyWith(
            players: players,
            status: Status.success(),
          ));
        },
        failure: (code, message) {
          l.el('composer autocomplete _getPlayers failure', message);
          emit(state.copyWith(status: Status.fail()));
        },
      );
    } catch (e) {
      if (e is Failure) {
        l.el('composer autocomplete _getPlayers Failure', e.message);
        emit(state.copyWith(
            status: Status.fail(code: e.status, message: e.message)));
      } else {
        l.el('composer autocomplete _getPlayers catch', e);
        emit(state.copyWith(
            status: Status.fail(message: "???????????? ??????????????? ?????????????????????.")));
      }
    }
  }

  _selectPlayer(AutoCompleteEventSelectPlayer event, Emitter emit) async {
    emit(state.copyWith(player: event.player));
  }

  _updatePlayer(AutoCompleteEventUpdatePlayer event, Emitter emit) async {
    add(AutoCompleteEvent.getPlayers());
  }

  _getConductors(AutoCompleteEventGetConductors event, Emitter emit) async {
    try {
      emit(state.copyWith(status: StatusLoading()));
      final result = await _conductorRepository.getConductors();

      result.when(
        success: (conductors) {
          emit(state.copyWith(
            players: conductors,
            status: Status.success(),
          ));
        },
        failure: (code, message) {
          l.el('composer autocomplete _getConductors failure', message);
          emit(state.copyWith(status: Status.fail()));
        },
      );
    } catch (e) {
      if (e is Failure) {
        l.el('composer autocomplete _getConductors Failure', e.message);
        emit(state.copyWith(
            status: Status.fail(code: e.status, message: e.message)));
      } else {
        l.el('composer autocomplete _getConductors catch', e);
        emit(state.copyWith(
            status: Status.fail(message: "???????????? ??????????????? ?????????????????????.")));
      }
    }
  }

  _selectConductor(AutoCompleteEventSelectConductor event, Emitter emit) async {
    emit(state.copyWith(conductor: event.conductor));
  }
}
