import 'package:covid_tracker/redux/models/confirmed_cases/confirmed_cases_model.dart';

class ConfirmedCasesState {
  CasesState cases;
  LocationState locations;

  ConfirmedCasesState({
    this.cases,
    this.locations,
  });

  factory ConfirmedCasesState.initial() => ConfirmedCasesState(
        cases: CasesState.initial(),
        locations: LocationState.initial(),
      );
}

class CasesState {
  dynamic error;
  bool loading;
  ConfirmedCases data;

  CasesState({
    this.error,
    this.loading,
    this.data,
  });

  factory CasesState.initial() => CasesState(
        error: null,
        loading: false,
        data: null,
      );
}

class LocationState {
  dynamic error;
  bool loading;
  LocationState data;

  LocationState({
    this.error,
    this.loading,
    this.data,
  });

  factory LocationState.initial() => LocationState(
        error: null,
        loading: false,
        data: null,
      );
}
