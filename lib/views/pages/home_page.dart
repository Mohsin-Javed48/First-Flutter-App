import 'package:first_app/data/constants.dart';
import 'package:first_app/views/Widgets/hero_widget.dart';
import 'package:first_app/views/pages/Container_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            HeroWidget(title: 'Home'),
            ContainerWidget(
                title: 'Basic Layout',
                description: 'The description of the layout '),
            ContainerWidget(
                title: 'Basic Layout',
                description: 'The description of the layout '),
            ContainerWidget(
                title: 'Basic Layout',
                description: 'The description of the layout '),
            ContainerWidget(
                title: 'Basic Layout',
                description: 'The description of the layout '),
            ContainerWidget(
                title: 'Basic Layout',
                description: 'The description of the layout '),
          ],
        ),
      ),
    );
  }
}
