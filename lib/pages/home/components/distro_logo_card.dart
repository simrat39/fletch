import 'package:fletch/services/distro_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DistroLogoCard extends StatefulWidget {
  const DistroLogoCard({Key? key}) : super(key: key);

  @override
  _DistroLogoCardState createState() => _DistroLogoCardState();
}

class _DistroLogoCardState extends State<DistroLogoCard> {
  Future? getDistro;

  @override
  void initState() {
    super.initState();
    getDistro = DistroService.getDistro();
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      child: FutureBuilder(
        future: getDistro,
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Text("Waiting...");
          }
          return SvgPicture.asset(
              DistroService.getLogoForDistro(snapshot.data));
        },
      ),
    );
  }
}
