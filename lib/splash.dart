import 'package:flutter/material.dart';

class MySplashScreen extends StatefulWidget {
  const MySplashScreen({super.key});

  @override
  State<MySplashScreen> createState() => _MySplashScreenState();
}

class _MySplashScreenState extends State<MySplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3)).then(
      (value) => Navigator.of(context).pushReplacementNamed('login'),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(221, 81, 222, 217),
      child: Center(
        child: Icon(
          Icons.add_road,
          size: MediaQuery.of(context).size.width / 5,
          color: Theme.of(context).backgroundColor,
        ),
      ),
    );
  }
}
