import 'package:flutter/material.dart';
import '../widgets/input_field.dart';

class SkillsScreen extends StatelessWidget {
  SkillsScreen({super.key});

  final skillsCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Skills')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: InputField(
          label: 'Skills (comma separated)',
          controller: skillsCtrl,
          maxLines: 3,
        ),
      ),
    );
  }
}
