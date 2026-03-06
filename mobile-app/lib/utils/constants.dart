class AppConstants {
  static const String appName = 'AI Resume Builder';
  static const List<String> jobRoles = [
    'Software Developer',
    'Data Analyst',
    'UI Designer',
    'Marketing Specialist',
  ];

  static const String aiPromptTemplate = '''Generate a professional resume summary for a candidate applying for the role of [job_role].

Candidate information:

Skills: [skills list]
Education: [degree]
Projects: [projects]

The summary should be professional, concise, and optimized for ATS systems.''';
}
