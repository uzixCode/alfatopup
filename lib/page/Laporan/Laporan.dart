import 'package:alfanet/BLoC/createNewVoucherBerandaButtonBLoC.dart';
import 'package:alfanet/attribute/Colors.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'dart:convert';

import 'package:http/http.dart' as http;

class Laporan extends StatefulWidget {
  @override
  _LaporanState createState() => _LaporanState();
}

class _LaporanState extends State<Laporan> {
  String name;
  String password;
  String value;
  int index = 0;
  TextEditingController textcontrol;

  getResult(Map<String, dynamic> object) {
    setState(() {
      name = object['username'].toString();
      password = object['password'].toString();
    });
  }

  check(List<dynamic> list, String checker) {
    for (int i = 0; i < list.length; i++) {
      checktwo(list[i], checker);
      if (name == value) {
        break;
      }
      print(list.length);
    }
  }

  checktwo(Map<String, dynamic> object, String checker) {
    if (object['username'].toString() == checker) {
      setState(() {
        name = object['username'];
      });
    } else {
      setState(() {
        name = "data not found";
      });
    }
    print(object['username']);
  }

  Future connectToAPI(String checker) async {
    String apiURL = "http://103.56.149.189/api/reseller";

    var apiResult = await http.get(apiURL);
    var jsonObject = json.decode(apiResult.body);
    var userData = jsonObject[index];

    return check(jsonObject, checker);
  }

  @override
  Widget build(BuildContext context) {
    CreateNewVoucherBerandaButtonBLoC bloc =
        BlocProvider.of<CreateNewVoucherBerandaButtonBLoC>(context);
    var color = new AllColor();
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BlocBuilder<CreateNewVoucherBerandaButtonBLoC, String>(
              builder: (context, statusCode) => Text("$statusCode",
                  style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold)),
            ),
            SizedBox(height: 100),
            RaisedButton(
                color: color.color_0,
                onPressed: () {
                  bloc.add(CreateNewVoucherBerandaButtonBLoCEvent.beli);
                },
                child: Text(
                  "POST",
                  style: TextStyle(color: Colors.white),
                ))
          ],
        ),
      ),
    );
  }
}
