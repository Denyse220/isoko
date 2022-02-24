// ignore_for_file: avoid_returning_null_for_void, deprecated_member_use

import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        // Remove padding
        padding: EdgeInsets.zero,
        children: <Widget>[
          ImageProfile(),
          ListTile(
            leading: const Icon(Icons.account_box),
            title: const Text('Profile'),
            onTap: () => null,
          ),
          ListTile(
            leading: const Icon(Icons.details),
            title: const Text('Statistics'),
            onTap: () => null,
          ),
          ListTile(
            leading: const Icon(Icons.payment),
            title: const Text('Payments'),
            onTap: () => null,
          ),
          ListTile(
            leading: const Icon(Icons.notifications),
            title: const Text('Notifications'),
            onTap: () => null,
            trailing: ClipOval(
              child: Container(
                color: Colors.green,
                width: 20,
                height: 20,
                child: const Center(
                  child: Text(
                    '8',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                    ),
                  ),
                ),
              ),
            ),
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.settings),
            title: const Text('Settings'),
            onTap: () => null,
          ),
          const Divider(),
          ListTile(
            title: const Text('Exit'),
            leading: const Icon(Icons.exit_to_app),
            onTap: () => null,
          ),
        ],
      ),
    );
  }
}

// ignore: non_constant_identifier_names
Widget ImageProfile() {
  return Center(
    child: Stack(children: <Widget>[
      const CircleAvatar(
        radius: 80.0,
        backgroundImage: AssetImage("assets/drop.png"),
      ),
      Positioned(
        bottom: 20.0,
        right: 20.0,
        child: InkWell(
          onTap: () {},
          child: const Icon(
            Icons.camera_alt,
            color: Colors.black,
            size: 28.0,
          ),
        ),
      ),
    ]),
  );
}

Widget bottomSheet() {
  return Container(
    height: 100.0,
    //width: MediaQuery.of(context).size.width,
    margin: const EdgeInsets.symmetric(
      horizontal: 20,
      vertical: 20,
    ),
    child: Column(
      children: <Widget>[
        const Text(
          "Choose Profile Photo",
          style: TextStyle(
            fontSize: 20.0,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Row(children: <Widget>[
          Center(
            child:
                TextButton(onPressed: () {}, child: const Icon(Icons.camera)),
          ),
        ]),
      ],
    ),
  );
}

  //bottomNavigationBar: CurvedNavigationBar(),
            
// TODO Implement this library.
