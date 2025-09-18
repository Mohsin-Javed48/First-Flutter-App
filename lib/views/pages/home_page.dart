import 'package:first_app/data/constants.dart';
import 'package:first_app/views/Widgets/hero_widget.dart';
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
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(vertical: 20),
              child: Card(
                child: Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Basic Layout', style: KTextStyle.title),
                      Text(
                        'The description of the layout ',
                        style: KTextStyle.description,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
