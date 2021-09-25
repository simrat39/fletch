import 'dart:io';

import 'package:flutter/cupertino.dart';

class MemInfoService extends ChangeNotifier {
  MemInfoService() {
    startMemoryReadLoop();
  }

  var memTotal = 2;
  var memAvailable = 1;

  File memFile = File("/proc/meminfo");

  Future<String> readMemFile() async {
    return await memFile.readAsString();
  }

  void parseMemFile(String contents) {
    var lines = contents.split("\n");

    var memTotalLine = lines[0];
    memTotal = int.parse(memTotalLine.split(":")[1].trim().split(' ')[0]);

    var memAvLine = lines[2];
    memAvailable = int.parse(memAvLine.split(":")[1].trim().split(' ')[0]);
  }

  double getRatio() {
    return (memTotal - memAvailable) / memTotal;
  }

  String getFormatted() {
    var used = (memTotal - memAvailable) ~/ 1024;
    var total = memTotal ~/ 1024;
    return "$used M / $total M";
  }

  Future startMemoryReadLoop() async {
    while (true) {
      var content = await readMemFile();
      parseMemFile(content);
      notifyListeners();
      await Future.delayed(const Duration(seconds: 2));
    }
  }
}
