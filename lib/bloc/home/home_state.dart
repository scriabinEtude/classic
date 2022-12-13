import 'package:classic/common/object/status/status.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'home_state.freezed.dart';

enum HomePageIndex {
  link,
}

@freezed
class HomeState with _$HomeState {
  factory HomeState({
    required Status status,
    @Default(HomePageIndex.link) HomePageIndex index,
  }) = _HomeState;
}
