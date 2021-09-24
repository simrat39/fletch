import 'package:fletch/pages/home/styles/title_style.dart';
import 'package:fletch/providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HostName extends ConsumerWidget {
  const HostName({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    var infoService = watch(userInfoProvider);
    print(infoService.getFormattedName());
    return Row(
      children: [
        Text(
          "Host",
          style: titleStyle,
        ),
        const Spacer(),
        Text(infoService.getFormattedName()),
      ],
    );
  }
}
