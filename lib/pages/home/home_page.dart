import 'package:fletch/pages/home/components/distro_logo_card.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        DistroLogoCard(),
      ],
    );
  }
}
