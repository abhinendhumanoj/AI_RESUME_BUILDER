import 'package:flutter/material.dart';

class CreateResumeScreen extends StatelessWidget {
  const CreateResumeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Resume Wizard')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          ListTile(title: const Text('1. Personal Information'), onTap: () => Navigator.pushNamed(context, '/personal-info')),
          ListTile(title: const Text('2. Education'), onTap: () => Navigator.pushNamed(context, '/education')),
          ListTile(title: const Text('3. Skills'), onTap: () => Navigator.pushNamed(context, '/skills')),
          ListTile(title: const Text('4. Experience'), onTap: () => Navigator.pushNamed(context, '/experience')),
          ListTile(title: const Text('5. Template Selection'), onTap: () => Navigator.pushNamed(context, '/templates')),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () => Navigator.pushNamed(context, '/preview'),
            child: const Text('Preview Resume'),
          ),
        ],
      ),
    );
  }
}
