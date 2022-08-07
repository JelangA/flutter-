import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
//https://identitytoolkit.googleapis.com/v1/accounts:signUp?key=AIzaSyAsHpo729MM6qPWE5vOsvaGOuUfRJOtEk8
class Auth with ChangeNotifier {
  void signup(String email, String password) async {
    Uri url = Uri.parse(
        "https://identitytoolkit.googleapis.com/v1/accounts:signUp?key=AIzaSyDHicSbJxoVZ6eVmecLn2zce6tQvC7gxns"
      );

    var response = await http.post(
      url,
      body: json.encode({
        "email": email,
        "password": password,
        "returnSecureToken": true,
      }),
    );

    print(jsonDecode(response.body));
  }
}
