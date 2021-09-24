import 'package:fletch/pages/home/styles/title_style.dart';
import 'package:fletch/services/shell_info_service.dart';
import 'package:flutter/widgets.dart';

class DefaultShell extends StatelessWidget {
  const DefaultShell({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "Shell",
          style: titleStyle,
        ),
        const Spacer(),
        Text(ShellInfoService.getDefaultShell()),
      ],
    );
  }
}
