import 'package:fletch/providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';

class DistroLogoCard extends StatefulWidget {
  const DistroLogoCard({Key? key}) : super(key: key);

  @override
  _DistroLogoCardState createState() => _DistroLogoCardState();
}

class _DistroLogoCardState extends State<DistroLogoCard> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      height: double.infinity,
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Consumer(
            builder: (context, watch, child) {
              var distroService = watch(distroProvider);
              return SvgPicture.asset(distroService.getLogo());
            },
          ),
        ),
      ),
    );
  }
}
