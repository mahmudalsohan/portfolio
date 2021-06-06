import 'package:flutter/material.dart';
import 'package:my_portfolio/screens/tablet_screen.dart';
import 'package:my_portfolio/screens/web_screen.dart';

import 'mobile_screen.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          if (constraints.maxWidth > 1100) {
            return WebScreen();
          } else if (constraints.maxWidth > 600 &&
              constraints.maxWidth < 1100) {
            return TabletScreen();
          } else {
            return MobileScreen();
          }
        },
      ),
    );
  }
}
