import 'package:flutter/material.dart';
import '../../sections/contact/contact_desktop.dart';
import '../../sections/contact/contact_mobile.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'contact_tab.dart';

class Contact extends StatelessWidget {
  const Contact({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: const ContactMobile(),
      tablet: const ContactTab(),
      desktop: const ContactDesktop(),
    );
  }
}
