import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:ionicons/ionicons.dart';
import '../../animations/bottom_animation.dart';
import '../../constants.dart';
import '../../widget/adaptive_text.dart';
import '../../widget/contact_card.dart';
import '../../widget/custom_text_heading.dart';
import '../../widget/social_icon_button.dart';

class ContactDesktop extends StatelessWidget {
  const ContactDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    late DateTime now = DateTime.now();

    return Container(
      padding: EdgeInsets.symmetric(horizontal: width * 0.02, vertical: height * 0.02),
      child: Column(
        children: [
          const CustomSectionHeading(
            text: "\nGet in Touch",
          ),
          const CustomSectionSubHeading(text: "Let's build something together \n\n"),
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.center,
          //   children: List.generate(
          //     kContactIcons.length,
          //     (index) => Padding(
          //       padding: const EdgeInsets.symmetric(horizontal: 12.0),
          //       child: WidgetAnimator(
          //         child: ProjectCard(
          //           cardWidth: width < 1200 ? width * 0.25 : width * 0.2,
          //           cardHeight: width < 1200 ? height * 0.28 : height * 0.25,
          //           projectIconData: kContactIcons[index],
          //           projectTitle: kContactTitles[index],
          //           projectDescription: kContactDetails[index],
          //         ),
          //       ),
          //     ),
          //   ),
          // ),
          // const Padding(padding: EdgeInsets.all(20.0)),
          // OutlinedCustomBtn(
          //     btnText: "Let's Work Together", onPressed: () => Navigator.pushNamed(context, '/workTogether')),
          // const Padding(padding: EdgeInsets.all(20.0))
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.09,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                alignment: Alignment.topCenter,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      width: width < 1200 ? width * 0.22 : width * 0.17,
                      height: width < 1200 ? height * 0.07 : height * 0.07,
                      alignment: Alignment.center,
                      child: AdaptiveText(
                        DateFormat('MMMM').format(now).toString(),
                        style: GoogleFonts.montserrat(
                          fontSize: MediaQuery.of(context).size.height * 0.02,
                          fontWeight: FontWeight.w800,
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
                      width: width < 1200 ? width * 0.22 : width * 0.17,
                      height: width < 1200 ? height * 0.14 : height * 0.14,
                      alignment: Alignment.center,
                      child: AdaptiveText(
                        now.day.toString(),
                        style: GoogleFonts.montserrat(
                          fontSize: MediaQuery.of(context).size.height * 0.06,
                          fontWeight: FontWeight.w800,
                          color: Colors.grey[100],
                        ),
                        textAlign: TextAlign.center,
                      ),
                      decoration: BoxDecoration(color: Colors.grey[900]),
                    ),
                    Container(
                      width: width < 1200 ? width * 0.22 : width * 0.17,
                      height: width < 1200 ? height * 0.07 : height * 0.07,
                      alignment: Alignment.center,
                      child: AdaptiveText(
                        DateFormat('EEEE').format(now).toString(),
                        style: GoogleFonts.montserrat(
                          fontSize: MediaQuery.of(context).size.height * 0.018,
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
                          color: Colors.grey[900]),
                    ),
                    SizedBox(
                      height: height * 0.02,
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        width: width < 1200 ? width * 0.22 : width * 0.17,
                        height: width < 1200 ? height * 0.045 : height * 0.045,
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
                                fontSize: MediaQuery.of(context).size.height * 0.016,
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
              const Padding(padding: EdgeInsets.all(30.0)),
              Column(
                children: [
                  ContactCard(
                      title: "Hire Me",
                      height: height,
                      fontSize: MediaQuery.of(context).size.height * 0.013,
                      iconSize: MediaQuery.of(context).size.height * 0.024,
                      iconData: FontAwesomeIcons.code,
                      onPressed: () {}),
                  SizedBox(
                    height: height * 0.02,
                  ),
                  ContactCard(
                      title: "moteysenyo@gmail.com",
                      height: height,
                      fontSize: MediaQuery.of(context).size.height * 0.013,
                      iconSize: MediaQuery.of(context).size.height * 0.024,
                      iconData: FontAwesomeIcons.solidEnvelope,
                      onPressed: () {}),
                  SizedBox(
                    height: height * 0.02,
                  ),
                  ContactCard(
                      title: "+233240065389",
                      height: height,
                      fontSize: MediaQuery.of(context).size.height * 0.013,
                      iconSize: MediaQuery.of(context).size.height * 0.024,
                      iconData: FontAwesomeIcons.phone,
                      onPressed: () {}),
                  SizedBox(
                    height: height * 0.02,
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.04,
                  ),
                  Row(
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
                ],
              ),
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.12,
          ),
        ],
      ),
    );
  }
}
