import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepPurple,
          brightness: Brightness.dark,
        ),
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepPurple,
          title: const Text("Questions App"),
        ),
        body: Center(
          child: Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.red,
                width: 2,
              ),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              // crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  height: 100.0,
                  width: 100.0,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 24, 235, 5),
                    borderRadius: BorderRadius.circular(205.0),
                  ),
                  child: const Center(
                    child: Text(
                      "Hello",
                      style: TextStyle(
                        color: Colors.amber,
                        fontSize: 24,
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 100.0,
                  width: 100.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25.0),
                    color: Colors.red,
                  ),
                  child: const Center(
                    child: Text(
                      "Hello",
                      style: TextStyle(
                        color: Colors.amber,
                        fontSize: 24,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}


//! Wrap

       body: Wrap(children = [
            const Text(
                "HelloLskjdflkajsdflkjasdlkfjasdlkfjalk;sdjflaksdjflkasdjf;klasdjfkl;sadj"),
            const Text(
                "HelloLskjdflkajsdflkjasdlkfjasdlkfjalk;sdjflaksdjflkasdjf;klasdjfkl;sadj"),
            const Text(
                "HelloLskjdflkajsdflkjasdlkfjasdlkfjalk;sdjflaksdjflkasdjf;klasdjfkl;sadj"),
            const Text(
                "HelloLskjdflkajsdflkjasdlkfjasdlkfjalk;sdjflaksdjflkasdjf;klasdjfkl;sadj"),
          ]),
        ));



 //! Master layout
 //? Stateless widget = screen will not change
 //? stateFul widget = screen will change


// Stateless Widget
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromARGB(255, 187, 247, 66),
          brightness: Brightness.dark,
        ),
      ),
      // Scaffold
      home: const Scaffold(),
    );
  }
}



String title = "Mohsin App";

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromARGB(255, 187, 247, 66),
          brightness: Brightness.dark,
        ),
      ),
      // Scaffold
      home: const MyWidget(),
    );
  }
}

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text(title),
        centerTitle: true,
      ),
      body: currentIndex == 0
          ? const Center(child: Text("Home"))
          : const Center(child: Text("Profile")),
      drawer: const Drawer(
        child: Column(
          children: [
            Text("Hello"),
          ],
        ),
      ),
      bottomNavigationBar: 
    ));
  }
}


