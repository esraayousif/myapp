import 'package:flutter/material.dart';
import 'package:project1/splash.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          fontFamily: 'times',
         
          backgroundColor: Color.fromRGBO(249, 249, 249, 1)),
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
