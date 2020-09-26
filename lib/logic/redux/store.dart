import 'package:covid_tracker/logic/api/apiclient.dart';
import 'package:covid_tracker/logic/redux/app_state.dart';
import 'package:covid_tracker/logic/redux/middleware/middleware.dart';
import 'package:redux/redux.dart';
import 'reducers/global_reducer.dart';

final store = Store<AppState>(
  reducer,
  initialState: AppState.create(),
  middleware: getMiddlewares(ApiClient()),
);
