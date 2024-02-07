import 'package:auth_screens_tutorial/constants.dart';
import 'package:auth_screens_tutorial/screens/welcome_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
        primaryColor: kprimaryColor,
        scaffoldBackgroundColor: klightBackgroundColor,
      ),
      home: WelcomeScreen(),
    );
  }
}
