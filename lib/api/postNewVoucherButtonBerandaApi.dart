import 'dart:convert';

import 'package:alfanet/attribute/randomString.dart';
import 'package:http/http.dart';

class PostNewVoucherButtonBeranda {
  String status;

  // getResult(Map<String, dynamic> object) {
  //   name = object['username'];
  // }

  printJsonObject(dynamic jsonObject) {
    print(jsonObject);
  }

  connectToAPI() async {
    String userName = RandomString().getRandomString(5);
    String passWord = userName;
    String url = 'http://103.56.149.189/api/userhotspot/add';
    Map<String, String> headers = {"Content-type": "application/json"};
    String json =
        '{"server": "all", "name": "$userName", "password": "$passWord","profile": "FREE","kode_reseller": "qkdvxkgvlu"}';

    Response response = await post(url, headers: headers, body: json);

    int statusCode = response.statusCode;
    status = statusCode.toString();
    String body = response.body;
    print(body);
    print(statusCode);
    print("username : $userName");
    print("password : $passWord");
    print("statusCode : $status");
  }

  // String get userName {
  //   return name;
  // }
}
