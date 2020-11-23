import 'dart:convert';

import 'package:http/http.dart' as http;

class GetSaldoApi {
  String saldo;

  getResult(Map<String, dynamic> object) {
    saldo = object['saldo'].toString();
  }

  Future<GetSaldoApi> connectToAPI() async {
    try {
      String apiURL = "http://103.56.149.189/api/reseller";

      var apiResult = await http.get(apiURL);
      var jsonObject = json.decode(apiResult.body);
      var userData = jsonObject[2];
      return getResult(userData);
    } catch (e) {
      saldo = "Eror";
    }
  }
}
