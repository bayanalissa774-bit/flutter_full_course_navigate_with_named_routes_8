// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:flutter_full_course_navigate_with_named_routes_8/pages/login.dart';
import 'package:flutter_full_course_navigate_with_named_routes_8/pages/signup.dart';
import 'package:flutter_full_course_navigate_with_named_routes_8/pages/welcome.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       debugShowCheckedModeBanner: false,
      theme: ThemeData.light(useMaterial3: true),
       
       initialRoute: '/',
        routes: {
    // When navigating to the "/" route, build the FirstScreen widget.
    '/': (context) => const Welcome(),
    "/login" : (context) => const LoginForm(),
    "/signup" : (context) => const Signup(),
   
  },
    );
  }
}


