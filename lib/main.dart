import 'package:flutter/material.dart';
import 'package:flutter_log_signup_home_project/pages/index.dart';
import 'package:flutter_log_signup_home_project/pages/login.dart';
import 'package:flutter_log_signup_home_project/pages/signup.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        // When navigating to the "/" route, build the FirstScreen widget.
        '/': (context) => const Index(),
        // When navigating to the "/second" route, build the SecondScreen widget.
        '/log': (context) => const Login(),
        '/signup': (context) => const Signup(),
      },
    );
  }
}
