import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'projects_mobile.dart';
import 'projects_desktop.dart';

class Portfolio extends StatelessWidget {
  const Portfolio({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: const ProjectsMobile(),
      tablet: const ProjectsMobile(),
      desktop: const ProjectsDesktop(),
    );
  }
}
