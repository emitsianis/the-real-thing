class User {
  final int id;
  final String? firstName;
  final String? lastName;
  final String? mobile;
  final String? birthday;
  final String? gender;
  final bool? visibleGender;

  User(this.id,
      this.firstName,
      this.lastName,
      this.mobile,
      this.birthday,
      this.gender,
      this.visibleGender,);

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      json['id'],
      json['firstName'],
      json['lastName'],
      json['mobile'],
      json['birthday'],
      json['gender'],
      json['visibleGender'],
    );
  }
}
