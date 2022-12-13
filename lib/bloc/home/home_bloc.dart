import 'package:bloc/bloc.dart';
import 'package:classic/common/object/status/status.dart';
import 'package:classic/bloc/home/home_event.dart';
import 'package:classic/bloc/home/home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeState(status: Status.init())) {
    on<HomeEvent>((event, emit) {});
  }
}
