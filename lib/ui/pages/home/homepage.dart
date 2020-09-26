import 'package:covid_tracker/logic/models/globalnumbers/globalnumbers.dart';
import 'package:covid_tracker/logic/redux/actions/global_actions.dart';
import 'package:covid_tracker/logic/redux/app_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.all(20),
          child: Column(
            children: [
              AppTitle(),
              StoreConnector<AppState, _HomePageModel>(
                converter: (store) => store.dispatch(GlobalSummaryNumbers()),
                // return _HomePageModel(
                //   result: store.state.global,
                //   state: store.state.globalState,
                // );

                builder: (context, viewModel) {
                  return Column(
                    children: [
                      Container(
                        child: Text(viewModel.result.newConfirmed),
                      ),
                    ],
                  );
                },
              )
              // StoreConnector<AppState, _ViewModel>(
              //     converter: (Store<AppState> store) =>
              //         _ViewModel.create(store),
              //     builder: (BuildContext context, _ViewModel viewModel) =>
              //         Column(
              //           children: [
              //             GlobalCasesSummary(viewModel: viewModel),
              //           ],
              //         )),
            ],
          ),
        ),
      ),
    );
  }
}

class _HomePageModel {
  final Global result;
  final GlobalState state;

  _HomePageModel({this.result, this.state});
}

// class _ViewModel {
//   final Global global;

//   _ViewModel({this.global});

//   factory _ViewModel.create(Store<AppState> store) {
//     return _ViewModel(
//       global: store.state.global,
//     );
//   }
// }

class AppTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Global Outlook',
                style: Theme.of(context)
                    .textTheme
                    .headline5
                    .copyWith(color: Colors.black.withOpacity(0.8)),
              ),
              Text(
                'Track the Coronavirus global outbreak',
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.grey,
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}

// class GlobalCasesSummary extends StatelessWidget {
//   final _ViewModel viewModel;

//   GlobalCasesSummary({
//     this.viewModel,
//   });
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.start,
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Container(
//             child: Text('HOME'),
//             child: Text(viewModel.global.newConfirmed),
//           )
//         ],
//       ),
//     );
//   }
// }
