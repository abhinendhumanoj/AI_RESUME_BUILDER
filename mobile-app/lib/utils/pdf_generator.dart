import 'dart:typed_data';

import 'package:pdf/widgets.dart' as pw;

class PdfGenerator {
  static Future<Uint8List> generateResumePdf(Map<String, dynamic> resume) async {
    final doc = pw.Document();

    doc.addPage(
      pw.Page(
        build: (context) => pw.Padding(
          padding: const pw.EdgeInsets.all(24),
          child: pw.Column(
            crossAxisAlignment: pw.CrossAxisAlignment.start,
            children: [
              pw.Text(resume['full_name'] ?? '', style: pw.TextStyle(fontSize: 22, fontWeight: pw.FontWeight.bold)),
              pw.Text('${resume['email'] ?? ''} • ${resume['phone'] ?? ''} • ${resume['location'] ?? ''}'),
              pw.SizedBox(height: 12),
              pw.Text('Professional Summary', style: pw.TextStyle(fontWeight: pw.FontWeight.bold)),
              pw.Text(resume['summary'] ?? ''),
              pw.SizedBox(height: 12),
              pw.Text('Skills', style: pw.TextStyle(fontWeight: pw.FontWeight.bold)),
              pw.Text((resume['skills'] as List<dynamic>? ?? []).join(', ')),
            ],
          ),
        ),
      ),
    );

    return doc.save();
  }
}
