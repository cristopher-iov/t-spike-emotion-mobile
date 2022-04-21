import 'package:flutter/material.dart';

import 'responsive/mobile_layout.dart';
import 'responsive/desktop_layout.dart';
import 'responsive/responsive_layout.dart';

class HomePage extends StatelessWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ResponsiveLayout(
        mobileBody: MobileLayout(),
        desktopBody: DesktopLayout(),
      ),
    );
  }
}
