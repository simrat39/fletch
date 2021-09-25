import 'package:fletch/pages/home/components/mem_wave.dart';
import 'package:fletch/providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MemCard extends ConsumerWidget {
  const MemCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final memInfo = watch(memInfoProvider);

    return SizedBox(
      width: 300,
      height: double.infinity,
      child: Card(
        child: Column(
          children: [
            SizedBox(
              width: 300,
              height: 300,
              child: Padding(
                padding: const EdgeInsets.all(24.0),
                child: MemWave(service: memInfo),
              ),
            ),
            /* Text(memInfo.getFormatted()), */
            Text.rich(
              TextSpan(
                children: [
                  const TextSpan(
                    text: "Memory: ",
                  ),
                  TextSpan(
                    text: memInfo.getFormatted(),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
