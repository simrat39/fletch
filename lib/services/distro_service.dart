import 'dart:io';

import 'package:flutter/cupertino.dart';

class DistroService extends ChangeNotifier {
  Distro distro = Distro.unknown;

  DistroService() {
    setDistro();
  }

  Future setDistro() async {
    var key = DistroService.releaseFileToDistro.keys.firstWhere((element) {
      File file = File("/etc/" + element);
      return file.existsSync();
    }, orElse: () => "unknown");

    distro = DistroService.releaseFileToDistro[key] ?? Distro.unknown;
    notifyListeners();
  }

  static const Map<String, Distro> releaseFileToDistro = {
    "arch-release": Distro.arch,
    "unknown": Distro.unknown,
  };

  String getLogo() {
    switch (distro) {
      case Distro.arch:
        return "logos/arch.svg";
      case Distro.unknown:
        return "logos/pengu.svg";
    }
  }
}

enum Distro { arch, unknown }
