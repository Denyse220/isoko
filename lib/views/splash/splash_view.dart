import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.indigoAccent,
      body: Center(
        child: Text(
          'Isooko',
          style: TextStyle(fontSize: 40, color: Colors.white),
        ),
      ),
    );
  }
}
