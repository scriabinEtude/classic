part of 'route_bloc.dart';

@immutable
abstract class RouteEvent {}

class UserChangeEvent extends RouteEvent {
  final User? user;

  UserChangeEvent({required this.user});
}
