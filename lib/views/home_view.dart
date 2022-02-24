import 'package:isokapp/NavBar.dart';
import 'package:isokapp/controller/home/homeview_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:line_icons/line_icons.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final hcontroller = Get.put(HomeViewController());
    // ignore: unused_local_variable
    var size = MediaQuery.of(context).size.width;
    const TextStyle optionStyle =
        TextStyle(fontSize: 30, fontWeight: FontWeight.w600);
    const List<Widget> _widgetOptions = <Widget>[
      NavBar(),
      Text(
        'Likes',
        style: optionStyle,
      ),
      Text(
        'Search',
        style: optionStyle,
      ),
      Text(
        'Profile',
        style: optionStyle,
      ),
    ];
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Isokapp'),
          centerTitle: true,
        ),
        bottomNavigationBar: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                blurRadius: 20,
                color: Colors.black.withOpacity(.1),
              )
            ],
          ),
          child: SafeArea(
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
              child: GNav(
                rippleColor: Colors.grey[300]!,
                hoverColor: Colors.grey[100]!,
                gap: 8,
                activeColor: Colors.black,
                iconSize: 24,
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                duration: const Duration(milliseconds: 400),
                tabBackgroundColor: Colors.grey[100]!,
                color: Colors.black,
                // ignore: prefer_const_literals_to_create_immutables
                tabs: [
                  const GButton(
                    icon: LineIcons.home,
                    text: 'Home',
                  ),
                  const GButton(
                    icon: LineIcons.heart,
                    text: 'Likes',
                  ),
                  const GButton(
                    icon: LineIcons.search,
                    text: 'Search',
                  ),
                  const GButton(
                    icon: LineIcons.user,
                    text: 'Profile',
                  ),
                ],
                selectedIndex: int.parse(hcontroller.selectedIndex.toString()),
                onTabChange: (index) {
                  hcontroller.updateSelected(index: index.toString());
                },
              ),
            ),
          ),
        ),
        body: Obx(() => Center(
              child: _widgetOptions
                  .elementAt(int.parse(hcontroller.selectedIndex.toString())),
            )),
      ),
    );
  }
}
