import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../provider/theme_provider.dart';
import '../../widget/adaptive_text.dart';
import 'package:provider/provider.dart';

class CustomSectionHeading extends StatelessWidget {
  final String text;

  const CustomSectionHeading({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    return AdaptiveText(
      text,
      style: GoogleFonts.montserrat(
        fontSize: MediaQuery.of(context).size.height * 0.06,
        fontWeight: FontWeight.w100,
        letterSpacing: 1.0,
        color: themeProvider.lightTheme ? Colors.black : Colors.white,
      ),
    );
  }
}

class CustomSectionSubHeading extends StatelessWidget {
  final String text;

  const CustomSectionSubHeading({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    return AdaptiveText(
      text,
      style: GoogleFonts.montserrat(
        fontSize: MediaQuery.of(context).size.height * 0.018,
        fontWeight: FontWeight.w200,
        color: themeProvider.lightTheme ? Colors.black : Colors.white,
      ),
    );
  }
}
