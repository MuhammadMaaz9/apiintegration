import 'dart:developer';

import 'package:apiintegration/model/user_model.dart';
import 'package:apiintegration/services/constants.dart';
import 'package:http/http.dart' as http;

class ApiService {
  Future<List<Welcome>?> getdata() async {
    try {
      var url = Uri.parse(Apiconstants.Baseurl + Apiconstants.userEndPoint);
      var response = await http.get(url);
      if (response.statusCode == 200 || response.statusCode == 201) {
        // List<Welcome> _model = welcomeFromJson(response.body);
        return welcomeFromJson(response.body);
      }
    } catch (e) {
      log(e.toString());
    }
  }
}
