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
    return SizedBox(
      width: 300,
      height: double.infinity,
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: FutureBuilder(
            future: getDistro,
            builder: (BuildContext context, AsyncSnapshot snapshot) {
              if (snapshot.connectionState == ConnectionState.done) {
                return SvgPicture.asset(
                    DistroService.getLogoForDistro(snapshot.data));
              }
              return const SizedBox.shrink();
            },
          ),
        ),
      ),
    );
  }
}
