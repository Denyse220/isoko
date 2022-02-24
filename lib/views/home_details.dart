import 'package:flutter/material.dart';

class HomeDetails extends StatefulWidget {
  const HomeDetails({Key? key}) : super(key: key);

  @override
  State<HomeDetails> createState() => _HomeDetailsState();
}

class _HomeDetailsState extends State<HomeDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: const [
          Text('Muraho'),
          Text('Muraho'),
          Text('Muraho'),
          Text('Muraho'),
          Text('Muraho'),
          Text('Muraho'),
          Text('Muraho'),
          Text('Muraho'),
          Text('Muraho'),
          Text('Muraho'),
          Text('Muraho'),
          Text('Muraho'),
        ],
      ),
    );
  }
}
