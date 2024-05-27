import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ScanScreen extends StatelessWidget {
  const ScanScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: ElevatedButton(
            onPressed: () {
              context.push('/ar-screen');
            },
            child: Text('Play AR')));
  }
}
