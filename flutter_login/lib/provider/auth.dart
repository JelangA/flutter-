import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Auth with ChangeNotifier {
  sigup(String email, String password) {
    Uri url = Uri.parse("https://identitytoolkit.googleapis.com/v1/accounts:signUp?key=[API_KEY]");
  }
}
