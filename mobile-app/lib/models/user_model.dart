class UserModel {
  final String id;
  final String name;
  final String email;
  final String? phone;

  UserModel({
    required this.id,
    required this.name,
    required this.email,
    this.phone,
  });

  factory UserModel.fromMap(Map<String, dynamic> map, String id) => UserModel(
        id: id,
        name: map['name'] ?? '',
        email: map['email'] ?? '',
        phone: map['phone'],
      );

  Map<String, dynamic> toMap() => {
        'name': name,
        'email': email,
        'phone': phone,
      };
}
