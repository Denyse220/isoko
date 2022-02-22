// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'NavBar.dart';

void main() {
  runApp(Isoko());
}

class Isoko extends StatelessWidget {
  const Isoko({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Isoko',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  MyHomePageState createState() => MyHomePageState();
}

class MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavBar(),
      appBar: AppBar(
        title: Text('IsokApp'),
      ),
      body: Center(
        child: Container(
          child: GridView.count(
            padding: EdgeInsets.all(20.0),
            crossAxisCount: 2,
            children: const <Widget>[
              MyMenu(
                  title: 'Home',
                  icon: Icons.account_balance,
                  warna: Colors.brown),
              MyMenu(
                  title: 'Pay',
                  icon: Icons.payment_rounded,
                  warna: Colors.blue),
              MyMenu(
                  title: "Details",
                  icon: Icons.details_outlined,
                  warna: Colors.yellow),
              MyMenu(
                  title: "Switch on/off",
                  icon: Icons.water,
                  warna: Colors.grey),
            ],
          ),
        ),
      ),
    );
  }
}

class MyMenu extends StatelessWidget {
  const MyMenu({required this.title, required this.icon, required this.warna});
  final String title;
  final IconData icon;
  final MaterialColor warna;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        onTap: () {},
        splashColor: Colors.blue,
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Icon(
                icon,
                size: 70.0,
                color: warna,
              ),
              Text(title, style: TextStyle(fontSize: 17.0))
            ],
          ),
        ),
      ),
    );
  }
}
