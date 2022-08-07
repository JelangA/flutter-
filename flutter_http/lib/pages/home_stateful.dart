// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_http/models/http_stateful.dart';

class HomeStateful extends StatefulWidget {
  @override
  _HomeStatefulState createState() => _HomeStatefulState();
}

class _HomeStatefulState extends State<HomeStateful> {
  HttpStateful dataResponse =
      HttpStateful(id: '', name: '', job: '', createdAt: '');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("POST - STATEFUL")),
      ),
      body: Container(
        width: double.infinity,
        margin: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FittedBox(
              child: Text(
                (dataResponse.id == "")
                    ? " id : belum ada data"
                    : " id : ${dataResponse.id}",
                style: TextStyle(fontSize: 20),
              ),
            ),
            SizedBox(height: 20),
            FittedBox(child: Text("Name : ", style: TextStyle(fontSize: 20))),
            FittedBox(
              child: Text(
                (dataResponse.name == "")
                    ? "belum ada data"
                    : " ${dataResponse.name}",
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
            SizedBox(height: 20),
            FittedBox(child: Text("Job : ", style: TextStyle(fontSize: 20))),
            FittedBox(
              child: Text(
                (dataResponse.job == "")
                    ? " belum ada data"
                    : " ${dataResponse.job}",
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
            SizedBox(height: 20),
            FittedBox(
                child: Text("Created At : ", style: TextStyle(fontSize: 20))),
            FittedBox(
              child: Text(
                (dataResponse.createdAt == "")
                    ? " belum ada data"
                    : " ${dataResponse.createdAt}",
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
            SizedBox(height: 100),
            OutlinedButton(
              onPressed: () {
                HttpStateful.connectApi('jelang', 'flutter develover')
                    .then((value) {
                  print(value.name);
                  setState(() {
                    dataResponse = value;
                  });
                });
              },
              child: Text(
                "POST DATA",
                style: TextStyle(
                  fontSize: 25,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
