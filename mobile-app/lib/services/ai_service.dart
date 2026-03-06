import 'dart:convert';

import 'package:http/http.dart' as http;

class AiService {
  final String baseUrl;

  AiService({required this.baseUrl});

  Future<Map<String, dynamic>> generateResumeContent({
    required String jobRole,
    required List<String> skills,
    required String education,
    required List<String> projects,
  }) async {
    final response = await http.post(
      Uri.parse('$baseUrl/api/ai/generate'),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode({
        'jobRole': jobRole,
        'skills': skills,
        'education': education,
        'projects': projects,
      }),
    );

    if (response.statusCode >= 400) {
      throw Exception('AI generation failed: ${response.body}');
    }

    return jsonDecode(response.body) as Map<String, dynamic>;
  }
}
