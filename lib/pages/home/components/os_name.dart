import 'package:fletch/pages/home/styles/title_style.dart';
import 'package:fletch/providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class OsName extends ConsumerWidget {
  const OsName({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final distro = watch(distroProvider);
    return Row(
      children: [
        Text(
          "OS",
          style: titleStyle,
        ),
        const Spacer(),
        Text(distro.getName()),
      ],
    );
  }
}
