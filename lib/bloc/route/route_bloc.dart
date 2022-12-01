import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:classic/bloc/route/route_state.dart';
import 'package:classic/bloc/user/user_bloc.dart';
import 'package:classic/data/model/user.dart';
import 'package:classic/common/config/route.dart';

part 'route_event.dart';

class RouteBloc extends Bloc<RouteEvent, RouteState> {
  RouteBloc({
    required this.grassRouter,
    required this.userBloc,
  }) : super(RouteState(goRouter: grassRouter.getRouter())) {
    _userSubScribe();

    on<UserChangeEvent>(_userChange);
  }

  final GrassRouter grassRouter;
  final UserBloc userBloc;
  StreamSubscription? _userSubscription;

  void _userSubScribe() {
    userBloc.stream.listen((user) => add(UserChangeEvent(user: user.user)));
  }

  void _userChange(UserChangeEvent event, Emitter emit) {
    emit(state.copyWith(goRouter: grassRouter.getRouter()));
  }

  @override
  Future<void> close() {
    _userSubscription?.cancel();
    return super.close();
  }
}
