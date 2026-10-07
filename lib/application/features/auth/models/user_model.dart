class UserModel {
  final String?password;
  final String?uid;
  final String?email;
  final String?name;
  final String?phone;

  UserModel({
    required this.uid,
    required this.email,
    required this.name,
    required this.phone,
    required this.password
  });
}