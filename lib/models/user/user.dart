class User {
  User({
    required this.id,
    required this.username,
    required this.fullName,
    required this.email,
    this.generation,
    this.phoneNumber,
    required this.idDivision,
    required this.idRole,
  });

  int id;
  String username;
  String fullName;
  String email;
  String? generation;
  String? phoneNumber;
  int idDivision;
  int idRole;

  factory User.fromJson(Map<String, dynamic> json) => User(
        id: json['id'],
        username: json['username'],
        fullName: json['fullName'],
        email: json['email'],
        generation: json['generation'],
        phoneNumber: json['phoneNumber'],
        idDivision: json['id_division'],
        idRole: json['id_role'],
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'username': username,
        'fullName': fullName,
        'email': email,
        'generation': generation,
        'phoneNumber': phoneNumber,
        'id_division': idDivision,
        'id_role': idRole,
      };
}
