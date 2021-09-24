import 'package:fletch/pages/home/components/default_shell.dart';
import 'package:fletch/pages/home/components/host_name.dart';
import 'package:fletch/pages/home/components/kernel_name.dart';
import 'package:fletch/pages/home/components/os_name.dart';
import 'package:fletch/pages/home/components/uptime.dart';
import 'package:flutter/material.dart';

class InfoCard extends StatelessWidget {
  const InfoCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 12.0),
        child: Column(
          children: const [
            Divider(),
            Expanded(child: OsName()),
            Divider(),
            Expanded(child: HostName()),
            Divider(),
            Expanded(child: KernelName()),
            Divider(),
            Expanded(child: Uptime()),
            Divider(),
            Expanded(child: DefaultShell()),
            Divider(),
          ],
        ),
      ),
    );
  }
}
