import 'package:flutter/material.dart';
import 'about_desktop.dart';
import 'about_mobile.dart';
import 'about_tab.dart';

import 'package:responsive_builder/responsive_builder.dart';

class About extends StatelessWidget {
  const About({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: AboutMobile(),
      tablet: AboutTab(),
      desktop: AboutDesktop(),
    );
  }
}
