class ExperienceModel {
  final String company;
  final String role;
  final String duration;
  final String description;

  ExperienceModel({
    required this.company,
    required this.role,
    required this.duration,
    required this.description,
  });

  Map<String, dynamic> toMap() => {
        'company': company,
        'role': role,
        'duration': duration,
        'description': description,
      };
}
