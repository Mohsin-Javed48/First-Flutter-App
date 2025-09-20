import 'package:first_app/views/pages/login_page.dart';
import 'package:first_app/views/widget_tree.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class onBoardingPage extends StatelessWidget {
  const onBoardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Lottie animation
                Lottie.asset(
                  'assets/lotties/login_page_logo.json',
                  height: 300,
                  width: 300,
                ),
                const SizedBox(height: 40),
                // Next button
                ElevatedButton(
                  style: FilledButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 1, 209, 202),
                    foregroundColor: Colors.white,
                    minimumSize: Size(double.infinity, 50),
                  ),
                  onPressed: () => onLoginPress(context),
                  child: Text("Next"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void onLoginPress(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
          builder: (context) => const LoginPage(title: "Register")),
    );
  }
}
