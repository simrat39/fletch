import 'package:fletch/services/mem_info_service.dart';
import 'package:flutter/material.dart';
import 'package:liquid_progress_indicator/liquid_progress_indicator.dart';

class MemWave extends StatelessWidget {
  final MemInfoService service;

  const MemWave({Key? key, required this.service}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final memInfo = service;
    final ratio = memInfo.getRatio();

    return LiquidCircularProgressIndicator(
      value: ratio,
      borderColor: Colors.black45,
      borderWidth: 5.0,
      direction: Axis.vertical,
      center: Text((ratio * 100).ceil().toString() + "%"),
    );
  }
}
