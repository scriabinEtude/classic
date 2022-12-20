import 'package:bloc/bloc.dart';
import 'package:classic/common/object/logger/logger.dart';

class AppBlocObserver extends BlocObserver {
  @override
  void onEvent(Bloc bloc, Object? event) {
    l.il('BLOC EVENT', event);
    super.onEvent(bloc, event);
  }

  // @override
  // void onChange(BlocBase bloc, Change change) {
  //   super.onChange(bloc, change);
  //   l.i('BLOC ONCHANGE', change);
  // }

  // @override
  // void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
  //   l.i('BLOC ERROR', error);
  //   super.onError(bloc, error, stackTrace);
  // }

  // @override
  // void onTransition(Bloc bloc, Transition transition) {
  //   l.i('BLOC TRANSITION', transition);
  //   super.onTransition(bloc, transition);
  // }
}
