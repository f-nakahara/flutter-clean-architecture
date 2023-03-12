extension StringExtension on String {
  bool get isEmail {
    return RegExp(r'^.+@[a-zA-Z]+\.[a-zA-Z]+(\.?[a-zA-Z]+)$').hasMatch(this);
  }
}
