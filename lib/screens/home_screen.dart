import 'package:dynamic_stuff/screens/call_screen.dart';
import 'package:dynamic_stuff/screens/print_screen.dart';
import 'package:dynamic_stuff/screens/setting_screen.dart';
import 'package:dynamic_stuff/screens/swipe_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomeState();
  }
}

class HomeState extends State {
  int selectedItem = 0;
  var screens = [SettingScreen(), PrintScreen(), CallScreen()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: "setting"),
            BottomNavigationBarItem(icon: Icon(Icons.print), label: "Print"),
            BottomNavigationBarItem(icon: Icon(Icons.call), label: "Call")
          ],
          onTap: (int i) {
            setState(() {
              selectedItem = i;
            });
          },
          currentIndex: selectedItem,
          backgroundColor: Colors.blue,
          selectedItemColor: Colors.white,
        ),
        body: SwipeScreen());
  }
}
