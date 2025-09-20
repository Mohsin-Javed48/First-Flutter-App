import 'package:first_app/views/Widgets/hero_widget.dart';
import 'package:flutter/material.dart';

class CoursePage extends StatefulWidget {
  const CoursePage({super.key});

  @override
  State<CoursePage> createState() => _CoursePageState();
}

class _CoursePageState extends State<CoursePage> {
  @override
  void initState() {
    getData();
    super.initState();
  }

  void getData() async {
    final response =
        await http.get(Uri.parse('https://api.example.com/courses'));
    final data = jsonDecode(response.body);
    setState(() {
      courses = data;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              HeroWidget(
                title: 'Course',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
