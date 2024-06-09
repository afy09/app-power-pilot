import 'package:flutter/material.dart';
import 'package:arcore_flutter_plugin/arcore_flutter_plugin.dart';
import 'package:go_router/go_router.dart';

class ARScreen extends StatefulWidget {
  const ARScreen({super.key});

  @override
  _ARScreenState createState() => _ARScreenState();
}

class _ARScreenState extends State<ARScreen> {
  late ArCoreController arCoreController;

  @override
  void dispose() {
    arCoreController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Halo, Ali!",
          style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
              color: Color(0xFF4F4A45)),
        ),
        actions: [

          IconButton(
            onPressed: () {
              context.push('/login');
            },
            icon: const Icon(Icons.logout),
          ),
          SizedBox(width: 14),
        ],
      ),
      body: SafeArea(
        child: Center(
          // Add this
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                  width: 200,
                  child: Image.asset(
                    'images/onboard2.png',
                    fit: BoxFit.contain,
                    width: 200,
                  )),
              Column(
                // Remove Expanded
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Power Pilot',
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF4F4A45),
                    ),
                  ),
                  const SizedBox(height: 10),
                  const SizedBox(
                    width: 300,
                    child: Text(
                      'The power pilot application is an application that allows users to monitor electrical power, and we have provided several features in this application, the first is the home dashboard feature, in which we can see electricity data that has been used per day, week, month. , and annually and can make payments in the application, secondly the history feature where we can see the payment history and electricity data that has been used and also the remaining battery that has been used.',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const SizedBox(height: 20),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
