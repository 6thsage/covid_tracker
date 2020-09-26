import 'package:covid_tracker/logic/redux/actions/global_actions.dart';
import 'package:covid_tracker/logic/redux/app_state.dart';
import 'package:redux/redux.dart';

final reducer = combineReducers<AppState>([
  TypedReducer<AppState, GlobalSummaryNumbers>(_globalSummaryNumbers),
  TypedReducer<AppState, ResultsFailed>(_resultsFailed)
]);

AppState _globalSummaryNumbers(AppState appState, GlobalSummaryNumbers action) {
  return appState.copyWith(
    globalState: GlobalState.SUCCESS,
    global: action.results,
  );
}

AppState _resultsFailed(AppState appState, ResultsFailed action) {
  return appState.copyWith(
    globalState: GlobalState.FAILED,
  );
}
