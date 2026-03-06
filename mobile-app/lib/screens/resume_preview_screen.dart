import 'package:flutter/material.dart';
import 'package:printing/printing.dart';

import '../utils/pdf_generator.dart';
import '../widgets/resume_section_widget.dart';

class ResumePreviewScreen extends StatelessWidget {
  const ResumePreviewScreen({super.key});

  Map<String, dynamic> get sampleResume => {
        'full_name': 'Jane Candidate',
        'email': 'jane@example.com',
        'phone': '+1 555-0123',
        'location': 'San Francisco, CA',
        'summary': 'AI-assisted professional with strong software development and communication skills.',
        'skills': ['Flutter', 'Node.js', 'Firebase'],
      };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Resume Preview')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ResumeSectionWidget(title: 'Header', child: Text(sampleResume['full_name'] as String)),
            const SizedBox(height: 12),
            ResumeSectionWidget(title: 'Summary', child: Text(sampleResume['summary'] as String)),
            const SizedBox(height: 12),
            ResumeSectionWidget(title: 'Skills', child: Text((sampleResume['skills'] as List<dynamic>).join(', '))),
            const Spacer(),
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () async {
                      final pdf = await PdfGenerator.generateResumePdf(sampleResume);
                      await Printing.sharePdf(bytes: pdf, filename: 'resume.pdf');
                    },
                    child: const Text('Download PDF'),
                  ),
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: OutlinedButton(
                    onPressed: () => Navigator.pushNamed(context, '/create-resume'),
                    child: const Text('Edit Resume'),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
