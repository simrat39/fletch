import 'dart:io';

import 'package:flutter/widgets.dart';

class UserInfoService extends ChangeNotifier {
  UserInfoService() {
    setHostname();
  }

  String hostname = "";

  String getUserName() {
    return Platform.environment['USER'] ?? 'me';
  }

  Future setHostname() async {
    File file = File("/etc/hostname");
    hostname = await file.readAsString();
    hostname = hostname.replaceAll("\n", "");
    notifyListeners();
  }

  String getFormattedName() {
    return "${getUserName()}@$hostname";
  }
}
