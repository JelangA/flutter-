// ignore_for_file: prefer_interpolation_to_compose_strings, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final String uname;
  HomePage({Key key, this.uname}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Text(
                "Welcome : " + uname,
                // ignore: prefer_const_constructors
                style: TextStyle(
                  color: Colors.green,
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}