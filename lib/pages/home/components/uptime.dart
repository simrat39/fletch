import 'package:fletch/pages/home/styles/title_style.dart';
import 'package:fletch/services/kernel_info_service.dart';
import 'package:flutter/widgets.dart';

class Uptime extends StatefulWidget {
  const Uptime({Key? key}) : super(key: key);

  @override
  _UptimeState createState() => _UptimeState();
}

class _UptimeState extends State<Uptime> {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<Duration>(
      stream: KernelInfoService.uptimeStream(),
      builder: (BuildContext context, AsyncSnapshot<Duration> snapshot) {
        if (snapshot.connectionState == ConnectionState.active) {
          var duration = snapshot.data!;
          String sDuration =
              "${duration.inHours}h ${duration.inMinutes.remainder(60)}m ${(duration.inSeconds.remainder(60))}s";

          return Row(
            children: [
              Text(
                "Uptime",
                style: titleStyle,
              ),
              const Spacer(),
              Text(sDuration),
            ],
          );
        }
        return const SizedBox.shrink();
      },
    );
  }
}
