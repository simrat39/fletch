import 'dart:io';

class ShellInfoService {
  static String getDefaultShell() {
    return Platform.environment['SHELL'] ?? '/bin/idk';
  }
}
