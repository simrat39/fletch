import 'package:fletch/pages/home/components/distro_logo_card.dart';
import 'package:fletch/pages/home/components/info_card.dart';
import 'package:fletch/pages/home/components/mem_card.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const SizedBox(height: 12),
        SizedBox(
          height: 300,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: const [
              DistroLogoCard(),
              Expanded(
                child: InfoCard(),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 350,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: const [
              MemCard(),
            ],
          ),
        ),
        const SizedBox(height: 12),
      ],
    );
  }
}
