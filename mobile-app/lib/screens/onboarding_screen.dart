import 'package:flutter/material.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final slides = const [
      'Create resumes quickly',
      'AI-powered resume writing',
      'Professional templates and PDF export',
    ];

    return Scaffold(
      appBar: AppBar(title: const Text('Welcome')),
      body: ListView.separated(
        padding: const EdgeInsets.all(16),
        itemBuilder: (_, i) => ListTile(
          leading: CircleAvatar(child: Text('${i + 1}')),
          title: Text(slides[i]),
        ),
        separatorBuilder: (_, __) => const SizedBox(height: 12),
        itemCount: slides.length,
      ),
    );
  }
}
