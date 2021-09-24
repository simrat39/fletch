import 'package:flutter/widgets.dart';

class RootLayout extends StatelessWidget {
  final Widget child;

  const RootLayout({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth >= 1000) {
          return Container(
            padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * 0.1,
            ),
            child: child,
          );
        } else {
          return child;
        }
      },
    );
  }
}
