import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:covid_tracker/utils/constants.dart';
import 'package:covid_tracker/logic/models/globalnumbers/globalnumbers.dart';

class ApiClient {
  final String baseUrl;

  ApiClient({this.baseUrl = Constants.BASE_URL});

  Future<Global> fetchGlobalNumbersSummary() async {
    // print('code haifiki huku');
    final uri = Uri.parse(baseUrl);
    final response = await http.get(uri);
    // print(response);
    return Global.fromJSON(json.decode(response.body));
  }
}
