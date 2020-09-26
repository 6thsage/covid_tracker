import 'package:covid_tracker/logic/api/apiclient.dart';
import 'package:covid_tracker/logic/redux/actions/global_actions.dart';
import 'package:covid_tracker/logic/redux/app_state.dart';
import 'package:redux/redux.dart';

List<Middleware<AppState>> getMiddlewares(ApiClient apiClient) {
  return [
    TypedMiddleware<AppState, GlobalSummaryNumbers>(
        _getGlobalNumbersMiddleware(apiClient)),
  ];
}

Middleware<AppState> _getGlobalNumbersMiddleware(ApiClient apiClient) {
  return (Store<AppState> store, action, NextDispatcher next) {
    next(action);
    if (action is GlobalSummaryNumbers) {
      apiClient.fetchGlobalNumbersSummary().then((value) {
        print(value);
        store.dispatch(GlobalSummaryNumbers(results: value));
      });
    }
  };
}
