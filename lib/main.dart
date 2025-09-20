import 'package:first_app/data/constants.dart';
import 'package:flutter/material.dart';
import 'package:first_app/data/notifiers.dart';
import 'package:first_app/views/pages/welcome_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(const MyApp());
}

//Material App (statefull widget)
//Scaffold
//Navbar (App title)
// Bottom navigation bar setState

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    initThemeMode();
    super.initState();
  }

  void initThemeMode() async {
    final sharedPreferences = await SharedPreferences.getInstance();
    final bool? repeat = sharedPreferences.getBool(KConstants.themeModeKey);
    isDarkMode.value = repeat ?? true;
  }

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<bool>(
      valueListenable: isDarkMode,
      builder: (context, isDark, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            brightness: isDark ? Brightness.dark : Brightness.light,
            colorScheme: ColorScheme.fromSeed(
              seedColor: const Color.fromARGB(255, 187, 247, 66),
              brightness: isDark ? Brightness.dark : Brightness.light,
            ),
          ),
          home: const SafeArea(
            child: WelcomePage(),
          ),
        );
      }, // Added trailing comma here
    ); // Added trailing comma here
  }
}
