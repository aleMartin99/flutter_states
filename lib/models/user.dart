class User {
  String? name;
  int? age;
  List<String>? professions;

  User({this.age, this.name, this.professions});

  User copyWith({
    String? name,
    int? age,
    List<String>? professions,
  }) {
    return User(
        name: name ?? this.name,
        age: age ?? this.age,
        professions: professions ?? this.professions);
  }
}
