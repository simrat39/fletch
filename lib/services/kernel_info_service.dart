import 'dart:io';

class KernelInfoService {
  static Future<String> getKernelName() async {
    File file = File("/proc/version");
    var raw = await file.readAsString();
    return KernelInfoService.parseKernelInfo(raw);
  }

  static String parseKernelInfo(String data) {
    var list = data.split(" ");
    return "${list[0]} ${list[1]} ${list[2]}";
  }

  static Duration secondsToDuration(int seconds) {
    return Duration(seconds: seconds);
  }

  static Duration parseUptime(String uptime) {
    var uptimeDataList = uptime.split(" ");
    var uptimeSeconds = uptimeDataList[0];
    var intUptimeSeconds = double.parse(uptimeSeconds).floor();
    return KernelInfoService.secondsToDuration(intUptimeSeconds);
  }

  static Future<Duration> getCurrentUptime() async {
    File file = File("/proc/uptime");
    var contents = await file.readAsString();
    var formatted = KernelInfoService.parseUptime(contents);
    return formatted;
  }

  static Stream<Duration> uptimeStream() async* {
    while (true) {
      yield await getCurrentUptime();
      await Future.delayed(const Duration(seconds: 1));
    }
  }
}
