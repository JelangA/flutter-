// ignore_for_file: unused_import, prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("collumn"),
        ),

        //body column/orientasi vertical linear layout
        // body: Column(
        //   mainAxisAlignment: MainAxisAlignment.center,
        //   crossAxisAlignment: CrossAxisAlignment.end,
        //   children: [
        //     Container(
        //       width: 200,
        //       height: 50,
        //       color: Colors.green,
        //     ),           
        //     Container(
        //       width: 20,
        //       height: 60,
        //       color: Colors.red,
        //     ),
        //     Container(
        //       width: 300,
        //       height: 30,
        //       color: Colors.blue,
        //     ),
        //     Container(
        //       width: 480,
        //       height: 50,
        //       color: Colors.orange,
        //     ),
        //     Container(
        //       width: 200,
        //       height: 50,
        //       color: Colors.yellow,
        //     ),
        //   ],
        // ),
      
        //body row/orientasi horizontal linear layout
        //   body: Row(
        //   mainAxisAlignment: MainAxisAlignment.center,
        //   crossAxisAlignment: CrossAxisAlignment.end,
        //   children: [
        //     Container(
        //       height: 200,
        //       width: 30,
        //       color: Colors.green,
        //     ),           
        //     Container(
        //       height: 20,
        //       width: 20,
        //       color: Colors.red,
        //     ),
        //     Container(
        //       height: 300,
        //       width: 30,
        //       color: Colors.blue,
        //     ),
        //     Container(
        //       height: 480,
        //       width: 50,
        //       color: Colors.orange,
        //     ),
        //     Container(
        //       height: 200,
        //       width: 10,
        //       color: Colors.yellow,
        //     ),
        //   ],
        // ),
      
        //body stak/objek bertumpuk
        //   body:Stack(
        //   children: [
        //     Container(
        //       height: 200,
        //       width: 50,
        //       color: Colors.green,
        //     ),           
        //     Container(
        //       height: 400,
        //       width: 400,
        //       color: Colors.red,
        //     ),
        //     Container(
        //       height: 300,
        //       width: 300,
        //       color: Colors.blue,
        //     ),
        //     Container(
        //       height: 200,
        //       width: 200,
        //       color: Colors.orange,
        //     ),
        //     Container(
        //       height: 100,
        //       width: 100,
        //       color: Colors.yellow,
        //     ),
        //   ],
        // ),
      

      ),
    );
  }
}

//kelas font
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         body: Center(
//           child: Text(
//             "hello",
//             style: TextStyle(
//               color: Colors.green,
//               fontSize: 30,
//             ),
//             ),
//           ),
//         appBar: AppBar(
//           title: Center(child: Text("Application Flutter"))
//           ),
//       ),
//     );
//   }
// }
