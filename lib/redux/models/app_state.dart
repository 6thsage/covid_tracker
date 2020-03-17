import 'package:covid_tracker/redux/models/confirmed_cases/confirmed_cases_state.dart';
import 'package:meta/meta.dart';

@immutable
class AppState {
  final ConfirmedCasesState allcases;

  AppState({
    this.allcases,
  });

  factory AppState.initial() => AppState(
        allcases: ConfirmedCasesState().initial(),
      );

  AppState copyWith({
    ConfirmedCasesState allcases,
  }) {
    return AppState(allcases: allcases ?? this.allcases);
  }
}
