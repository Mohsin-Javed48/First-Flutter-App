import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  SettingsPage({super.key, required this.title});

  final String title;

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  final TextEditingController nameController = TextEditingController();
  bool? isChecked = false;
  bool isSwitched = false;
  double sliderValue = 0.0;
  String? menuItem = '1';

  @override
  void dispose() {
    // Always dispose controllers to free memory
    nameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // automaticallyImplyLeading: false,
        title: Text(widget.title),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ElevatedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      duration: Duration(seconds: 5),
                      behavior: SnackBarBehavior.floating,
                      content: Text('Snackbar'),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.from(
                      alpha: 1, red: 0.267, green: 0.839, blue: 0.514),
                  foregroundColor: const Color.fromARGB(255, 255, 255, 255),
                ),
                child: Text('Open Snackbar'),
              ),
              Divider(
                color: const Color.fromARGB(255, 156, 157, 157),
                thickness: 1,
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                          content: Text('Alert Dialog'),
                          title: Text('Alert Title'),
                          actions: [
                            FilledButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: Text('Close')),
                          ]);
                    },
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.from(
                      alpha: 1, red: 0.267, green: 0.839, blue: 0.514),
                  foregroundColor: Colors.white,
                ),
                child: Text('Open Snackbar'),
              ),
              DropdownButton(
                value: menuItem,
                focusColor: Colors.white,
                items: [
                  DropdownMenuItem(value: '1', child: Text('Element 1')),
                  DropdownMenuItem(value: '2', child: Text('Element 2')),
                  DropdownMenuItem(value: '3', child: Text('Element 3')),
                ],
                onChanged: (String? value) {
                  setState(() {
                    menuItem = value;
                  });
                },
              ),
              TextField(
                controller: nameController,
                decoration: const InputDecoration(
                  labelText: 'Enter your name',
                  border: OutlineInputBorder(),
                ),
                onChanged: (value) {
                  setState(() {}); // Updates text live as user types
                },
              ),
              const SizedBox(height: 12),
              Text(
                '${nameController.text}',
                style: const TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 20),
              Checkbox.adaptive(
                value: isChecked,
                onChanged: (bool? value) {
                  setState(() {
                    isChecked = value ?? false;
                  });
                },
              ),
              CheckboxListTile(
                title: const Text('I agree to the terms and conditions'),
                value: isChecked,
                onChanged: (bool? value) {
                  setState(() {
                    isChecked = value ?? false;
                  });
                },
              ),
              Switch(
                value: isSwitched,
                onChanged: (bool? value) {
                  setState(() {
                    isSwitched = value ?? false;
                  });
                },
              ),
              SwitchListTile(
                title: const Text('I agree to the terms and conditions'),
                value: isSwitched,
                onChanged: (bool? value) {
                  setState(() {
                    isSwitched = value ?? false;
                  });
                },
              ),
              Slider(
                max: 10.0,
                min: 0.0,
                divisions: 10,
                value: sliderValue,
                onChanged: (double value) {
                  setState(() {
                    sliderValue = value;
                  });
                  print(value);
                },
              ),
              InkWell(
                splashColor: Colors.red,
                onTap: () {
                  print('tap');
                },
                child: Container(
                    height: 50, width: double.infinity, color: Colors.white12),
              ),
              ElevatedButton(
                onPressed: () {
                  print('tap');
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.from(
                      alpha: 1, red: 0.267, green: 0.839, blue: 0.514),
                  foregroundColor: Colors.white,
                ),
                child: Text('Tap'),
              ),
              FilledButton(
                onPressed: () {
                  print('tap');
                },
                style: FilledButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 17, 214, 224),
                  foregroundColor: Colors.white,
                ),
                child: Text('Tap'),
              ),
              TextButton(
                onPressed: () {
                  print('tap');
                },
                child: Text('Tap'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
