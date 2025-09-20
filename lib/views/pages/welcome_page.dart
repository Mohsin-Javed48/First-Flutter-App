import 'package:first_app/views/pages/login_page.dart';
import 'package:first_app/views/pages/onBoarding_page.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(20),
      child: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Lottie.asset('assets/lotties/welcome_logo.json'),
              FittedBox(
                child: Text(
                  'Welcome to the app',
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 3),
                ),
              ),
              FilledButton(
                style: FilledButton.styleFrom(
                  backgroundColor: Color(0xFF76baad),
                  minimumSize: Size(double.infinity, 50),
                ),
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => onBoardingPage()),
                  );
                },
                child: Text('Get Started'),
              ),
              TextButton(
                style: FilledButton.styleFrom(
                  minimumSize: Size(double.infinity, 50),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const LoginPage(title: "Login")),
                  );
                },
                child: Text('Login'),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
