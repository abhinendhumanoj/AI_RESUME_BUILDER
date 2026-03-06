import 'package:flutter/material.dart';
import '../widgets/input_field.dart';

class PersonalInfoScreen extends StatelessWidget {
  PersonalInfoScreen({super.key});

  final nameCtrl = TextEditingController();
  final phoneCtrl = TextEditingController();
  final emailCtrl = TextEditingController();
  final linkedinCtrl = TextEditingController();
  final locationCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Personal Information')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          InputField(label: 'Name', controller: nameCtrl),
          const SizedBox(height: 10),
          InputField(label: 'Phone', controller: phoneCtrl),
          const SizedBox(height: 10),
          InputField(label: 'Email', controller: emailCtrl),
          const SizedBox(height: 10),
          InputField(label: 'LinkedIn', controller: linkedinCtrl),
          const SizedBox(height: 10),
          InputField(label: 'Location', controller: locationCtrl),
        ],
      ),
    );
  }
}
