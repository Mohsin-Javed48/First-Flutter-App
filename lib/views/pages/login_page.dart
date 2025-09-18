import 'package:first_app/views/Widgets/hero_widget.dart';
import 'package:first_app/views/widget_tree.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key, required this.title});
  final String title;

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  String confirmEmail = "123";
  String confirmPassword = "123";

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Column(
                children: [
                  HeroWidget(title: widget.title),
                  SizedBox(height: 20.0),
                  TextField(
                    controller: emailController,
                    decoration: InputDecoration(
                      labelText: 'Enter your Email',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                    onChanged: (value) {
                      setState(() {}); // Updates text live as user types
                    },
                  ),
                  SizedBox(height: 10.0),
                  TextField(
                    controller: passwordController,
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: 'Enter your Password',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0)),
                    ),
                    onChanged: (value) {
                      setState(() {}); // Updates text live as user types
                    },
                  ),
                  SizedBox(height: 10.0),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 0),
                    child: ElevatedButton(
                      style: FilledButton.styleFrom(
                        backgroundColor: const Color.fromARGB(255, 86, 86, 86),
                        foregroundColor: Colors.white,
                        minimumSize: Size(double.infinity, 40),
                      ),
                      onPressed: onLoginPress,
                      child: Text(widget.title),
                    ),
                  ),
                  SizedBox(height: 50.0),
                ],
              ),
            ),
          ),
        ));
  }

  void onLoginPress() {
    if (emailController.text == confirmEmail &&
        passwordController.text == confirmPassword) {
      Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (context) => const WidgetTree()),
          (route) => false);
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Invalid email or password')),
      );
    }
  }
}
