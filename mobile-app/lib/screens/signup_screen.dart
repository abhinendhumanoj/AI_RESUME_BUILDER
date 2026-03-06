import 'package:flutter/material.dart';

import '../widgets/input_field.dart';

class SignupScreen extends StatelessWidget {
  SignupScreen({super.key});

  final emailCtrl = TextEditingController();
  final passwordCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Sign Up')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            InputField(label: 'Email', controller: emailCtrl),
            const SizedBox(height: 12),
            InputField(label: 'Password', controller: passwordCtrl),
            const SizedBox(height: 16),
            ElevatedButton(onPressed: () {}, child: const Text('Create account')),
          ],
        ),
      ),
    );
  }
}
