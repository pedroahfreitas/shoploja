import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';

class Auth with ChangeNotifier {
  static const _url =
      'https://identitytoolkit.googleapis.com/v1/accounts:signUp?key=AIzaSyDJljwWR4gQYckQYbL8zwEbv71pWIK3yg0';
  Future<void> signup(String email, String password) async {
    final response = await http.post(
      Uri.parse(_url),
      body: jsonEncode({
        'email': email,
        'password': password,
        'returnSecureToken': true,
      }),
    );

    print(jsonDecode(response.body));
  }
}
