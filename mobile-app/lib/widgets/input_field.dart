import 'package:flutter/material.dart';

class InputField extends StatelessWidget {
  final String label;
  final TextEditingController controller;
  final int maxLines;

  const InputField({
    super.key,
    required this.label,
    required this.controller,
    this.maxLines = 1,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      maxLines: maxLines,
      decoration: InputDecoration(
        labelText: label,
        border: const OutlineInputBorder(),
      ),
    );
  }
}
