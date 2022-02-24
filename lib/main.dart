import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:isokapp/controller/splash_controller.dart';

import 'NavBar.dart';
import 'views/accounts/login_view.dart';
import 'views/splash/splash_view.dart';

void main() {
  runApp(const Isoko());
}

class Isoko extends StatelessWidget {
  const Isoko({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final scontroller = Get.put(SplashController());

    return GetMaterialApp(
      title: 'Isoko App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      debugShowCheckedModeBanner: false,
      // ignore: unrelated_type_equality_checks
      home: Obx(() => scontroller.splash == true
          ? const SplashScreen()
          : const LoginView()),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  MyHomePageState createState() => MyHomePageState();
}

class MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const NavBar(),
      appBar: AppBar(
        title: const Text('IsokApp'),
      ),
      body: Center(
        // ignore: avoid_unnecessary_containers
        child: Container(
          child: GridView.count(
            padding: const EdgeInsets.all(20.0),
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
  // ignore: use_key_in_widget_constructors
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
              Text(title, style: const TextStyle(fontSize: 17.0))
            ],
          ),
        ),
      ),
    );
  }
}
