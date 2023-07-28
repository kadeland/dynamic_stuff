import 'package:dynamic_stuff/screens/call_screen.dart';
import 'package:dynamic_stuff/screens/print_screen.dart';
import 'package:dynamic_stuff/screens/setting_screen.dart';
import 'package:flutter/cupertino.dart';

class SwipeScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return SwipeState();
  }
}

class SwipeState extends State {
  @override
  Widget build(BuildContext context) {
    PageController controller = PageController();
    return PageView(
      controller: controller,
      children: [SettingScreen(), PrintScreen(), CallScreen()],
    );
  }
}
