import 'package:flutter/material.dart';
import 'package:museum_polri/muri_app/route.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: ThemeData(
        fontFamily: 'Poppins',
      ),
      routerConfig: AppRouter(context).router,
      debugShowCheckedModeBanner: false,
    );
  }
}
