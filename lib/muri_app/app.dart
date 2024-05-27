import 'package:flutter/material.dart';
import 'package:museum_polri/muri_app/view/component/bottom_navbar.dart';

class App extends StatelessWidget {
  final Widget child;
  const App({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const BottomNavBar(),
      body: child,
    );
  }
}
