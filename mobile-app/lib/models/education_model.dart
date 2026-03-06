class EducationModel {
  final String university;
  final String degree;
  final String field;
  final String year;
  final String grade;

  EducationModel({
    required this.university,
    required this.degree,
    required this.field,
    required this.year,
    required this.grade,
  });

  Map<String, dynamic> toMap() => {
        'university': university,
        'degree': degree,
        'field': field,
        'year': year,
        'grade': grade,
      };
}
