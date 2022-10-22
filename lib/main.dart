import 'package:flutter/material.dart';
import 'splash.dart';
import 'login.dart';
import 'home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      routes: {
        'login': (context) => MyLoginPage(context),
        'home': (context) => MyHomePage(context),
      },
      home: const MySplashScreen(),
    );
  }
}
