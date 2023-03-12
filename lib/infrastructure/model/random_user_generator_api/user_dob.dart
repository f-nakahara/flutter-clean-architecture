class RugUserDob {
  final DateTime date;
  final int age;

  RugUserDob({
    required this.age,
    required this.date,
  });

  factory RugUserDob.fromJson(Map<String, dynamic> json) {
    return RugUserDob(
      age: json['age'],
      date: DateTime.parse(json['date']),
    );
  }
}
