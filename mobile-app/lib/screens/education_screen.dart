import 'package:flutter/material.dart';
import '../widgets/input_field.dart';

class EducationScreen extends StatelessWidget {
  EducationScreen({super.key});

  final uniCtrl = TextEditingController();
  final degreeCtrl = TextEditingController();
  final fieldCtrl = TextEditingController();
  final yearCtrl = TextEditingController();
  final gradeCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Education')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          InputField(label: 'University', controller: uniCtrl),
          const SizedBox(height: 10),
          InputField(label: 'Degree', controller: degreeCtrl),
          const SizedBox(height: 10),
          InputField(label: 'Field of Study', controller: fieldCtrl),
          const SizedBox(height: 10),
          InputField(label: 'Year', controller: yearCtrl),
          const SizedBox(height: 10),
          InputField(label: 'Grade', controller: gradeCtrl),
        ],
      ),
    );
  }
}
