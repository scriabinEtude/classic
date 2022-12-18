import 'package:bloc/bloc.dart';
import 'package:classic/bloc/composer/register/composer_register_event.dart';
import 'package:classic/bloc/composer/register/composer_register_state.dart';
import 'package:classic/common/config/di.dart';
import 'package:classic/common/object/status/status.dart';
import 'package:classic/data/repository/composer/register/composer_register_repository.dart';

class ComposerRegisterBloc
    extends Bloc<ComposerRegisterEvent, ComposerRegisterState> {
  ComposerRegisterBloc()
      : _composerRegisterRepository = di.get<ComposerRegisterRepository>(),
        super(ComposerRegisterState(status: StatusInit())) {
    on<ComposerRegisterEvent>(onGetLinks);
  }

  final ComposerRegisterRepository _composerRegisterRepository;

  onGetLinks(ComposerRegisterEvent event, Emitter emit) async {}
}
