import 'package:flutter/material.dart';
import '../../constants.dart';
import '../../provider/theme_provider.dart';
import 'package:provider/provider.dart';

class SocialMediaIconButton extends StatelessWidget {
  final String? icon;
  final String? socialLink;
  final double? height;
  final double? horizontalPadding;

  const SocialMediaIconButton({
    Key? key,
    this.icon,
    this.socialLink,
    this.height,
    this.horizontalPadding,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: horizontalPadding!),
      child: IconButton(
        icon: Image.asset(
          icon!,
          color: themeProvider.lightTheme ? Colors.black : Colors.white,
        ),
        iconSize: height,
        onPressed: () => launchURL(
          socialLink!,
        ),
        // hoverColor: kPrimaryColor,
      ),
    );
  }
}
