import 'dart:convert';

import 'package:http/http.dart' as http;

class GetUsernameApi {
  String name;

  getResult(Map<String, dynamic> object) {
    name = object['username'];
  }

  Future<GetUsernameApi> connectToAPI() async {
    try {
      String apiURL = "http://103.56.149.189/api/reseller";

      var apiResult = await http.get(apiURL);
      var jsonObject = json.decode(apiResult.body);
      var userData = jsonObject[2];

      return getResult(userData);
    } catch (e) {
      name = "Eror";
    }
  }
}
