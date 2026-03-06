import 'package:flutter/material.dart';
import '../widgets/input_field.dart';

class ExperienceScreen extends StatelessWidget {
  ExperienceScreen({super.key});

  final companyCtrl = TextEditingController();
  final roleCtrl = TextEditingController();
  final durationCtrl = TextEditingController();
  final responsibilitiesCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Experience')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          InputField(label: 'Company', controller: companyCtrl),
          const SizedBox(height: 10),
          InputField(label: 'Role', controller: roleCtrl),
          const SizedBox(height: 10),
          InputField(label: 'Duration', controller: durationCtrl),
          const SizedBox(height: 10),
          InputField(label: 'Responsibilities', controller: responsibilitiesCtrl, maxLines: 4),
        ],
      ),
    );
  }
}
