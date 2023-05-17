import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:techrebel.dev/widget/social_icon_button.dart';

import '../../constants.dart';
import '../../provider/theme_provider.dart';

class HomeTab extends StatelessWidget {
  const HomeTab({Key? key}) : super(key: key);

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
            bottom: width < 740 ? height * 0.1 : height * 0.15,
            right: width < 740 ? -width * 0.2 : -width * 0.1,
            child: Opacity(
              opacity: 0.9,
              child: SvgPicture.asset('assets/stack.svg', height: height * 0.75),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(width * 0.1, width < 740 ? height * 0.15 : height * 0.2, 0, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "WELCOME TO MY PORTFOLIO! ",
                      style: GoogleFonts.montserrat(
                        fontSize: height * 0.03,
                        fontWeight: FontWeight.w300,
                        color: themeProvider.lightTheme ? Colors.black : Colors.white,
                      ),
                    ),
                    // Image.asset(
                    //   "assets/hi.gif",
                    //   height: height * 0.05,
                    // ),
                  ],
                ),
                SizedBox(
                  height: height * 0.04,
                ),
                Text(
                  "Tech",
                  style: GoogleFonts.montserrat(
                      fontSize: height * 0.07,
                      fontWeight: FontWeight.w100,
                      color: themeProvider.lightTheme ? Colors.black : Colors.white,
                      letterSpacing: 1.5),
                ),
                Text(
                  "Rebel",
                  style: GoogleFonts.montserrat(
                    fontSize: height * 0.07,
                    fontWeight: FontWeight.w500,
                    color: themeProvider.lightTheme ? Colors.black : Colors.white,
                  ),
                ),
                // Row(
                //   children: [
                //     const Icon(
                //       Icons.play_arrow_rounded,
                //       color: kPrimaryColor,
                //     ),
                //     TyperAnimatedTextKit(
                //         isRepeatingAnimation: true,
                //         speed: const Duration(milliseconds: 50),
                //         textStyle: GoogleFonts.montserrat(
                //           fontSize: height * 0.03,
                //           fontWeight: FontWeight.w200,
                //           color: themeProvider.lightTheme ? Colors.black : Colors.white,
                //         ),
                //         text: const [" Flutter Developer", " Backend Developer", " Technical Writer"]),
                //   ],
                // ),
                SizedBox(
                  height: height * 0.045,
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    for (int i = 0; i < kSocialIcons.length; i++)
                      SocialMediaIconButton(
                        icon: kSocialIcons[i],
                        socialLink: kSocialLinks[i],
                        height: height * 0.035,
                        horizontalPadding: width * 0.01,
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
