import 'package:fletch/pages/home/styles/title_style.dart';
import 'package:fletch/services/kernel_info_service.dart';
import 'package:flutter/widgets.dart';

class KernelName extends StatefulWidget {
  const KernelName({Key? key}) : super(key: key);

  @override
  _KernelNameState createState() => _KernelNameState();
}

class _KernelNameState extends State<KernelName> {
  Future<String>? getName;

  @override
  void initState() {
    super.initState();
    getName = KernelInfoService.getKernelName();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: getName,
      builder: (BuildContext context, AsyncSnapshot<String> snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          return Row(
            children: [
              Text(
                "Kernel",
                style: titleStyle,
              ),
              const Spacer(),
              Text(snapshot.data!),
            ],
          );
        }
        return const SizedBox.shrink();
      },
    );
  }
}
