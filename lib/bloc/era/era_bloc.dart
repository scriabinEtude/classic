import 'package:bloc/bloc.dart';
import 'package:classic/bloc/era/era_event.dart';
import 'package:classic/bloc/era/era_state.dart';
import 'package:classic/common/config/di.dart';
import 'package:classic/common/object/status/status.dart';
import 'package:classic/data/const/code.dart';
import 'package:classic/data/repository/era/era_repository.dart';

class EraBloc extends Bloc<EraEvent, EraState> {
  EraBloc()
      : repository = di.get<EraRepository>(),
        super(EraState(status: StatusInit())) {
    on<EraEventRegister>(_register);
  }

  final EraRepository repository;

  _register(EraEventRegister event, Emitter emit) async {
    var result = await repository.register(event.era);
    result.whenOrNull(
      success: (data) => emit(
        state.copyWith(
          status: Status.success(
            code: CODE_ERA_REGISTER_SUCCESS,
          ),
        ),
      ),
    );
  }
}
