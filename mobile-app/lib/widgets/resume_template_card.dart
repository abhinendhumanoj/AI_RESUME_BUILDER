import 'package:flutter/material.dart';

class ResumeTemplateCard extends StatelessWidget {
  final String templateName;
  final VoidCallback onTap;

  const ResumeTemplateCard({
    super.key,
    required this.templateName,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(templateName),
        trailing: const Icon(Icons.arrow_forward_ios),
        onTap: onTap,
      ),
    );
  }
}
