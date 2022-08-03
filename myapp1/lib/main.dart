// ignore_for_file: unused_element

import 'package:flutter/material.dart';
import 'package:myapp1/view/register.dart';
import 'view/login.dart';

void main() {
  runApp(const MyApp());
}

//click container on login page to go to register page

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const LoginPage(),
    );
  }

  //click container on login page to go to register page
  void _navigateToRegisterPage(BuildContext context) {
    Navigator.push(
      context,
      // ignore: prefer_const_constructors
      MaterialPageRoute(builder: (context) => register()),
    );
  }
}
