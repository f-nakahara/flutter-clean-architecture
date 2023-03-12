import 'package:flutter/cupertino.dart';

class LoggerUtil {
  LoggerUtil._();

  static void log(String message) {
    debugPrint('[Logger] $message');
  }
}
