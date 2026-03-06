import 'package:flutter/material.dart';

import '../widgets/input_field.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final emailCtrl = TextEditingController();
  final passwordCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Login')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            InputField(label: 'Email', controller: emailCtrl),
            const SizedBox(height: 12),
            InputField(label: 'Password', controller: passwordCtrl),
            const SizedBox(height: 16),
            ElevatedButton(onPressed: () {}, child: const Text('Login')),
            TextButton(onPressed: () => Navigator.pushNamed(context, '/signup'), child: const Text('Sign up')),
            OutlinedButton(onPressed: () {}, child: const Text('Google login')),
          ],
        ),
      ),
    );
  }
}
