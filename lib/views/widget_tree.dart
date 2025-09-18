import 'package:first_app/data/constants.dart';
import 'package:first_app/data/notifiers.dart';
import 'package:first_app/views/Widgets/navbar_widget.dart';
import 'package:first_app/views/pages/home_page.dart';
import 'package:first_app/views/pages/profile_page.dart';
import 'package:first_app/views/pages/settings_page.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

List<Widget> pages = [
  const HomePage(),
  const ProfilePage(),
];

class WidgetTree extends StatelessWidget {
  const WidgetTree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My App'),
        centerTitle: true,
        actions: [
          ValueListenableBuilder<bool>(
            valueListenable: isDarkMode,
            builder: (context, isDark, child) {
              return IconButton(
                onPressed: () async {
                  isDarkMode.value = !isDarkMode.value;
                  final sharedPreferences =
                      await SharedPreferences.getInstance();
                  sharedPreferences.setBool(
                      KConstants.themeModeKey, isDarkMode.value);
                },
                icon: Icon(isDark ? Icons.light_mode : Icons.dark_mode),
              );
            },
          ),
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SettingsPage(title: 'Settings '),
                ),
              );
            },
            icon: const Icon(Icons.settings),
          ),
        ],
      ),
      body: ValueListenableBuilder(
        valueListenable: selectedPageNotifier,
        builder: (context, value, child) => pages[value],
      ),
      bottomNavigationBar: const NavbarWidget(),
    );
  }
}
