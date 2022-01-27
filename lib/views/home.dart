import 'package:flutter/material.dart';
class HomeView extends StatelessWidget {
  const HomeView({Key? key, required String title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text ("Welcome to Isoko App"),
      ),
    );
  }
}