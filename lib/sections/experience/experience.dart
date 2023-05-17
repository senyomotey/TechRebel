import 'package:flutter/material.dart';

import 'package:responsive_builder/responsive_builder.dart';

import 'experience_desktop.dart';
import 'experience_mobile.dart';
import 'experience_tab.dart';

class Experience extends StatelessWidget {
  const Experience({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: ExperienceMobile(),
      tablet: ExperienceTab(),
      desktop: ExperienceDesktop(),
    );
  }
}
