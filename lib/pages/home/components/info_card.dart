import 'package:fletch/pages/home/components/kernel_name.dart';
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
            Expanded(child: KernelName()),
            Divider(),
            Expanded(child: Text("b")),
            Divider(),
            Expanded(child: Text("b")),
            Divider(),
            Expanded(child: Text("b")),
            Divider(),
            Expanded(child: Text("b")),
            Divider(),
          ],
        ),
      ),
    );
  }
}
