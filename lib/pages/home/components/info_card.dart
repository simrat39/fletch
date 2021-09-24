import 'package:flutter/material.dart';

class InfoCard extends StatelessWidget {
  const InfoCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: const [
          Text("a"),
          Text("b"),
          Text("c"),
          Text("d"),
          Text("e"),
        ],
      ),
    );
  }
}
