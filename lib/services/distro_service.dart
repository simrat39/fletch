import 'dart:io';

class DistroService {
  static Future<Distro> getDistro() async {
    var key = DistroService.releaseFileToDistro.keys.firstWhere((element) {
      File file = File("/etc/" + element);
      return file.existsSync();
    }, orElse: () => "unknown");

    var distro = DistroService.releaseFileToDistro[key] ?? Distro.unknown;

    return distro;
  }

  static const Map<String, Distro> releaseFileToDistro = {
    "arch-release": Distro.arch,
    "unknown": Distro.unknown,
  };

  static String getLogoForDistro(Distro distro) {
    switch (distro) {
      case Distro.arch:
        return "logos/arch.svg";
      case Distro.unknown:
        return "logos/pengu.svg";
    }
  }
}

enum Distro { arch, unknown }
