import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'tech_stack_desktop.dart';
import 'tech_stack_tab.dart';
import 'tech_tack_mobile.dart';

class TechStack extends StatelessWidget {
  const TechStack({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: const TechStackMobile(),
      tablet: const TechStackTab(),
      desktop: const TechStackDesktop(),
    );
  }
}
