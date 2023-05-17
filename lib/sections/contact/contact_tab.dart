import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ionicons/ionicons.dart';
import '../../animations/bottom_animation.dart';
import '../../constants.dart';
import '../../widget/adaptive_text.dart';
import '../../widget/contact_card.dart';
import '../../widget/custom_text_heading.dart';
import '../../widget/social_icon_button.dart';

class ContactTab extends StatelessWidget {
  const ContactTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        const CustomSectionHeading(text: "\nGet in Touch"),
        const CustomSectionSubHeading(text: "Let's build something together \n\n"),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              alignment: Alignment.topCenter,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: width < 640 ? width * 0.5 : width * 0.5,
                    height: width < 640 ? width * 0.115 : width * 0.10,
                    alignment: Alignment.center,
                    child: AdaptiveText(
                      "May",
                      style: GoogleFonts.montserrat(
                        fontSize: MediaQuery.of(context).size.width * 0.035,
                        fontWeight: FontWeight.w700,
                        color: Colors.black,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(8.0),
                        topRight: Radius.circular(8.0),
                      ),
                    ),
                  ),
                  Container(
                    width: width < 640 ? width * 0.5 : width * 0.5,
                    height: width < 640 ? width * 0.30 : width * 0.3,
                    alignment: Alignment.center,
                    child: AdaptiveText(
                      "12",
                      style: GoogleFonts.montserrat(
                        fontSize: MediaQuery.of(context).size.width * 0.11,
                        fontWeight: FontWeight.w800,
                        color: Colors.grey[100],
                      ),
                      textAlign: TextAlign.center,
                    ),
                    decoration: BoxDecoration(color: Colors.grey[900]),
                  ),
                  Container(
                    width: width < 640 ? width * 0.5 : width * 0.5,
                    padding: EdgeInsets.only(top: 0.0, bottom: width < 640 ? width * 0.04 : width * 0.04),
                    alignment: Alignment.center,
                    child: AdaptiveText(
                      "Friday",
                      style: GoogleFonts.montserrat(
                        fontSize: MediaQuery.of(context).size.width * 0.03,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey[100],
                      ),
                      textAlign: TextAlign.center,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(8.0),
                        bottomRight: Radius.circular(8.0),
                      ),
                      color: Colors.grey[900],
                    ),
                  ),
                  SizedBox(
                    height: height * 0.02,
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      width: width < 640 ? width * 0.5 : width * 0.5,
                      height: width < 640 ? width * 0.08 : width * 0.08,
                      alignment: Alignment.center,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(
                            Ionicons.videocam,
                            color: Colors.black,
                            size: MediaQuery.of(context).size.height * 0.024,
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.height * 0.01,
                          ),
                          AdaptiveText(
                            "Lets have a short meeting",
                            style: GoogleFonts.montserrat(
                              fontSize: MediaQuery.of(context).size.width * 0.03,
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            ),
                            textAlign: TextAlign.center,
                          )
                        ],
                      ),
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(8.0),
                          topRight: Radius.circular(8.0),
                          bottomLeft: Radius.circular(8.0),
                          bottomRight: Radius.circular(8.0),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: width * 0.06,
            ),
            ContactCard(
                title: "Hire Me",
                height: height,
                fontSize: MediaQuery.of(context).size.height * 0.018,
                iconSize: MediaQuery.of(context).size.height * 0.026,
                iconData: FontAwesomeIcons.code,
                onPressed: () {}),
            SizedBox(
              height: height * 0.03,
            ),
            ContactCard(
                title: "moteysenyo@gmail.com",
                height: height,
                fontSize: MediaQuery.of(context).size.height * 0.018,
                iconSize: MediaQuery.of(context).size.height * 0.026,
                iconData: FontAwesomeIcons.solidEnvelope,
                onPressed: () {}),
            SizedBox(
              height: height * 0.03,
            ),
            ContactCard(
                title: "+233240065389",
                height: height,
                fontSize: MediaQuery.of(context).size.height * 0.018,
                iconSize: MediaQuery.of(context).size.height * 0.026,
                iconData: FontAwesomeIcons.phone,
                onPressed: () {}),
            SizedBox(
              height: MediaQuery.of(context).size.width * 0.1,
            ),
            Padding(
              padding: EdgeInsets.only(left: width * 0.15, right: width * 0.15),
              child: Row(
                // mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: List.generate(
                  kSocialIcons.length,
                  (index) => WidgetAnimator(
                    child: SocialMediaIconButton(
                      icon: kSocialIcons[index],
                      socialLink: kSocialLinks[index],
                      height: height * 0.028,
                      horizontalPadding: width * 0.015,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        const Padding(padding: EdgeInsets.all(20.0))
      ],
    );
  }
}
