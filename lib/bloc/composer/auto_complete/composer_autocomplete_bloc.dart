import 'package:bloc/bloc.dart';
import 'package:classic/bloc/composer/auto_complete/composer_autocomplete_event.dart';
import 'package:classic/bloc/composer/auto_complete/composer_autocomplete_state.dart';
import 'package:classic/common/config/di.dart';
import 'package:classic/common/object/logger/logger.dart';
import 'package:classic/common/object/result/result.dart';
import 'package:classic/common/object/status/status.dart';
import 'package:classic/data/repository/composer/composer_repository.dart';

class ComposerAutoCompleteBloc
    extends Bloc<ComposerAutoCompleteEvent, ComposerAutoCompleteState> {
  ComposerAutoCompleteBloc()
      : _composerRepository = di.get<ComposerRepository>(),
        super(ComposerAutoCompleteState(status: StatusInit())) {
    on<ComposerAutoCompleteEventInit>(_init);
    on<ComposerAutoCompleteEventAdd>(_add);
    add(ComposerAutoCompleteEvent.init());
  }

  final ComposerRepository _composerRepository;

  _init(ComposerAutoCompleteEventInit event, Emitter emit) async {
    if (state.composers.isNotEmpty) return;

    try {
      emit(state.copyWith(status: StatusLoading()));

      final result = await _composerRepository.getAllAutocomplete();
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
        emit(state.copyWith(
            status: Status.fail(code: e.status, message: e.message)));
      } else {
        l.el('composer autocomplete _init catch', e);
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
}
