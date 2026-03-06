import 'package:flutter/material.dart';
import '../widgets/resume_template_card.dart';

class TemplateSelectionScreen extends StatelessWidget {
  const TemplateSelectionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const templates = ['Modern', 'Classic', 'Minimal'];

    return Scaffold(
      appBar: AppBar(title: const Text('Template Selection')),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: templates.length,
        itemBuilder: (_, i) => ResumeTemplateCard(
          templateName: templates[i],
          onTap: () => ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text('Selected ${templates[i]}')),
          ),
        ),
      ),
    );
  }
}
