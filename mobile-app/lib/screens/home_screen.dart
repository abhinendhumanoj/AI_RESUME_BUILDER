import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Dashboard')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          ElevatedButton(onPressed: () => Navigator.pushNamed(context, '/create-resume'), child: const Text('Create Resume')),
          const SizedBox(height: 12),
          ElevatedButton(onPressed: () {}, child: const Text('My Resumes')),
          const SizedBox(height: 12),
          ElevatedButton(onPressed: () => Navigator.pushNamed(context, '/templates'), child: const Text('Templates')),
          const SizedBox(height: 12),
          ElevatedButton(onPressed: () => Navigator.pushNamed(context, '/settings'), child: const Text('Settings')),
        ],
      ),
    );
  }
}
