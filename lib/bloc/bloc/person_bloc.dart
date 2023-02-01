import 'package:bloc/bloc.dart';
import 'package:classic/bloc/bloc/person_event.dart';
import 'package:classic/bloc/bloc/person_state.dart';
import 'package:classic/common/config/di.dart';
import 'package:classic/common/object/status/status.dart';
import 'package:classic/data/const/code.dart';
import 'package:classic/data/repository/person/person_repository.dart';

class PersonBloc extends Bloc<PersonEvent, PersonState> {
  PersonBloc()
      : repository = di.get<PersonRepository>(),
        super(PersonState(status: Status.init())) {
    on<PersonEventRegister>(_register);
  }

  PersonRepository repository;
  _register(PersonEventRegister event, Emitter emit) async {
    var result = await repository.register(event.person);
    result.whenOrNull(
      success: (data) => emit(
        state.copyWith(
          status: Status.success(
            code: CODE_PERSON_REGISTER_SUCCESS,
          ),
        ),
      ),
    );
  }
}
