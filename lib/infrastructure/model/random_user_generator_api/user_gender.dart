enum RugUserGender {
  male('male'),
  female('female');

  final String value;
  const RugUserGender(this.value);

  factory RugUserGender.from(String value) {
    switch (value) {
      case 'male':
        return RugUserGender.male;
      case 'female':
        return RugUserGender.female;
      default:
        throw UnimplementedError();
    }
  }
}
