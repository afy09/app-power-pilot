import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return CurvedNavigationBar(
      items: const <Widget>[
        Icon(
          Icons.home,
          size: 30,
          color: Colors.white,
        ),
        Icon(
          Icons.table_chart,
          size: 30,
          color: Colors.white,
        ),
        Icon(
          Icons.info_outline,
          size: 30,
          color: Colors.white,
        ),
        Icon(
          Icons.person,
          size: 30,
          color: Colors.white,
        ),
      ],
      color: const Color(0xFF1594D7),
      backgroundColor: _selectedIndex == 4 ? Color(0xFF1594D7) : Colors.white,
      buttonBackgroundColor: const Color(0xFF1594D7),
      animationDuration: const Duration(milliseconds: 350),
      onTap: (value) {
        setState(() {
          _selectedIndex = value;
        });
        switch (value) {
          case 0:
            GoRouter.of(context).go('/');
            break;
          case 1:
            GoRouter.of(context).go('/leaderboard');
            break;
          case 2:
            GoRouter.of(context).go('/ar');
            break;
          case 3:
            GoRouter.of(context).go('/profile');
            break;
        }
      },
    );
  }
}
