import 'package:flutter/material.dart';
import 'package:loginuicolors/login.dart';
import 'package:loginuicolors/register.dart';
import 'package:loginuicolors/registeredpage.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyLogin(
      controller: TextEditingController(),
    ),
    routes: {
      'register': (context) => MyRegisterPage(),
      'login': (context) => MyLogin(
            controller: TextEditingController(),
          ),
      'registeredpage': (context) => MyForwardPage(),
    },
  ));
}
