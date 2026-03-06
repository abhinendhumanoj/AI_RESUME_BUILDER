class ResumeModel {
  final String? id;
  final String userId;
  final String fullName;
  final String email;
  final String phone;
  final String linkedIn;
  final String location;
  final String jobRole;
  final String summary;
  final List<String> skills;
  final List<Map<String, dynamic>> education;
  final List<Map<String, dynamic>> experience;
  final List<Map<String, dynamic>> projects;
  final String templateId;

  ResumeModel({
    this.id,
    required this.userId,
    required this.fullName,
    required this.email,
    required this.phone,
    required this.linkedIn,
    required this.location,
    required this.jobRole,
    required this.summary,
    required this.skills,
    required this.education,
    required this.experience,
    required this.projects,
    required this.templateId,
  });

  Map<String, dynamic> toMap() => {
        'user_id': userId,
        'full_name': fullName,
        'email': email,
        'phone': phone,
        'linkedin': linkedIn,
        'location': location,
        'job_role': jobRole,
        'summary': summary,
        'skills': skills,
        'education': education,
        'experience': experience,
        'projects': projects,
        'template_id': templateId,
        'created_at': DateTime.now().toIso8601String(),
      };
}
