class SkillsModel {
  final List<String> skills;

  SkillsModel({required this.skills});

  Map<String, dynamic> toMap() => {'skills': skills};
}
