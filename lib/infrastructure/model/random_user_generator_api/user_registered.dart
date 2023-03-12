class RugUserRegistered {
  final DateTime date;
  final int age;

  RugUserRegistered({
    required this.date,
    required this.age,
  });

  factory RugUserRegistered.fromJson(Map<String, dynamic> json) {
    return RugUserRegistered(
      date: json['date'],
      age: json['age'],
    );
  }
}
