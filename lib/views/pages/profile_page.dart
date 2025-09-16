import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final TextEditingController nameController = TextEditingController();
  bool? isChecked = false;

  @override
  void dispose() {
    // Always dispose controllers to free memory
    nameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
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
          Checkbox(
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
        ],
      ),
    );
  }
}
