import 'package:meta/meta.dart';
import 'package:covid_tracker/logic/models/globalnumbers/globalnumbers.dart';

@immutable
class AppState {
  final Global global;
  final GlobalState globalState;

  AppState({this.global, this.globalState});

  factory AppState.create() => AppState();

  AppState copyWith({
    Global global,
    GlobalState globalState,
  }) =>
      AppState(
        global: global ?? this.global,
        globalState: globalState ?? this.globalState,
      );
}

enum GlobalState {
  IDLE,
  LOADING,
  SUCCESS,
  FAILED,
}
