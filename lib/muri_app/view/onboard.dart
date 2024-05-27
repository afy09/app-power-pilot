import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class OnboardScreen extends StatelessWidget {
  const OnboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          // Add this
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              SizedBox(
                  width: double.infinity,
                  child: Image.asset(
                    'images/onboardpopi.png',
                    fit: BoxFit.contain,
                    width: double.infinity,
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
                      'Hi, welcome to the Popi application, please enjoy and learn about the features we have provided, Thank you :).',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const SizedBox(height: 20),
                  SizedBox(
                    width: 280,
                    height: 50,
                    child: ElevatedButton(
                      onPressed: () {
                        context.go('/login');
                      },
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.white,
                        backgroundColor: const Color(
                            0xFF1594D7), // This is the background color
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                              10), // This is the border radius
                        ),
                      ),
                      child: const Text(
                        'Next',
                        style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.bold),
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}


