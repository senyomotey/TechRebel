import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../constants.dart';
import '../../provider/theme_provider.dart';
import '../../widget/social_icon_button.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class HomeMobile extends StatelessWidget {
  const HomeMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return SizedBox(
      height: height,
      width: width,
      child: Stack(
        children: [
          Positioned(
            bottom: 0.0,
            right: -width * 0.25,
            child: Opacity(
              opacity: 0.9,
              child: SvgPicture.asset(
                'assets/stack.svg',
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(width * 0.07, height * 0.12, 0, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Tech",
                  style: GoogleFonts.montserrat(
                      fontSize: height * 0.055,
                      color: themeProvider.lightTheme ? Colors.black : Colors.white,
                      fontWeight: FontWeight.w100,
                      letterSpacing: 1.1),
                ),
                Text(
                  "Rebel",
                  style: GoogleFonts.montserrat(
                      color: themeProvider.lightTheme ? Colors.black : Colors.white,
                      fontSize: height * 0.055,
                      fontWeight: FontWeight.w500),
                ),
                // SizedBox(
                //   height: height * 0.01,
                // ),
                // Row(
                //   children: [
                //     const Icon(
                //       Icons.play_arrow_rounded,
                //       color: kPrimaryColor,
                //     ),
                //     TyperAnimatedTextKit(
                //       isRepeatingAnimation: true,
                //       speed: const Duration(milliseconds: 50),
                //       textStyle: GoogleFonts.montserrat(
                //           fontSize: height * 0.03,
                //           color: themeProvider.lightTheme ? Colors.black : Colors.white,
                //           fontWeight: FontWeight.w200),
                //       text: const [" Flutter Developer", " Backend Developer", " Technical Writer"],
                //     ),
                //   ],
                // ),
                SizedBox(
                  height: height * 0.035,
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    for (int i = 0; i < kSocialIcons.length; i++)
                      SocialMediaIconButton(
                        icon: kSocialIcons[i],
                        socialLink: kSocialLinks[i],
                        height: height * 0.03,
                        horizontalPadding: 2.0,
                      )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
