import 'package:flutter/foundation.dart';
import '../../provider/theme_provider.dart';
import '../../widget/adaptive_text.dart';
import '../../widget/custom_text_heading.dart';
import 'package:provider/provider.dart';

import 'package:flutter/material.dart';
import '../../constants.dart';
import 'package:google_fonts/google_fonts.dart';

class ExperienceMobile extends StatelessWidget {
  final _communityLogoHeight = [60.0, 70.0, 30.0, 70.0];

  ExperienceMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: width * 0.05,
      ),
      color: themeProvider.lightTheme ? Colors.white : Colors.black,
      child: Column(
        children: [
          const CustomSectionHeading(text: "\nExperience"),
          const CustomSectionSubHeading(text: "Reflection of what I've been doing so far, so long."),
          // Image.asset(
          //   'assets/mob.png',
          //   height: height * 0.27,
          // ),
          SizedBox(
            height: height * 0.03,
          ),
          // Align(
          //   alignment: Alignment.centerLeft,
          //   child: Text(
          //     "Who am I?",
          //     style: GoogleFonts.montserrat(
          //       color: kPrimaryColor,
          //       fontSize: height * 0.025,
          //     ),
          //   ),
          // ),
          // SizedBox(
          //   height: height * 0.028,
          // ),
          // Text(
          //   "I'm Senyo Motey, a Flutter Developer, Laravel Developer and UI designer.",
          //   style: GoogleFonts.montserrat(
          //     fontSize: height * 0.022,
          //     fontWeight: FontWeight.w400,
          //     color: themeProvider.lightTheme ? Colors.black : Colors.white,
          //   ),
          // ),
          // SizedBox(
          //   height: height * 0.02,
          // ),
          // Text(
          //   "For the past year, I have been working as a team leadand full stack engineer with 3SDCL Ghana where...",
          //   style: GoogleFonts.montserrat(
          //     fontSize: height * 0.018,
          //     color: Colors.grey[500],
          //     height: 1.5,
          //   ),
          // ),
          // SizedBox(
          //   height: height * 0.025,
          // ),
          // Container(
          //   decoration: BoxDecoration(
          //     border: Border(
          //       bottom: BorderSide(
          //         color: Colors.grey[900]!,
          //         width: 1.0,
          //       ),
          //     ),
          //   ),
          // ),
          // SizedBox(
          //   height: height * 0.015,
          // ),
          // Align(
          //   alignment: Alignment.centerLeft,
          //   child: Text(
          //     "Technologies I have worked with:",
          //     style: GoogleFonts.montserrat(color: kPrimaryColor, fontSize: height * 0.015),
          //   ),
          // ),
          // Row(
          //   children: [
          //     for (int i = 0; i < 4; i++)
          //       ToolTechWidget(
          //         techName: kTools[i],
          //       ),
          //   ],
          // ),
          // Row(
          //   children: [
          //     for (int i = 4; i < 8; i++)
          //       ToolTechWidget(
          //         techName: kTools[i],
          //       ),
          //   ],
          // ),
          // SizedBox(
          //   height: height * 0.015,
          // ),
          // Container(
          //   decoration: BoxDecoration(
          //     border: Border(
          //       bottom: BorderSide(
          //         color: Colors.grey[900]!,
          //         width: 1.0,
          //       ),
          //     ),
          //   ),
          // ),
          // SizedBox(
          //   height: height * 0.02,
          // ),
          // const AboutMeData(
          //   data: "Name",
          //   information: "Senyo Motey",
          //   alignment: Alignment.centerLeft,
          // ),
          // const AboutMeData(
          //   data: "Email",
          //   information: "moteysenyo@gmail.com",
          //   alignment: Alignment.centerLeft,
          // ),
          // SizedBox(
          //   height: height * 0.015,
          // ),
          // Align(
          //   alignment: Alignment.centerLeft,
          //   child: Row(
          //     children: [
          //       Padding(
          //         padding: const EdgeInsets.all(8.0),
          //         child: OutlinedCustomBtn(
          //             btnText: "Resume",
          //             onPressed: () {
          //               kIsWeb
          //                   ? html.window.open(
          //                       'https://drive.google.com/file/d/1FaHIzT9FigDHLx8NlxFIyQfjJTyN9WQ6/view?usp=sharing',
          //                       "pdf")
          //                   : launchURL(
          //                       'https://drive.google.com/file/d/1FaHIzT9FigDHLx8NlxFIyQfjJTyN9WQ6/view?usp=sharing');
          //             }),
          //       ),
          //       Container(
          //         width: width * 0.2,
          //         decoration: BoxDecoration(
          //           border: Border(
          //             bottom: BorderSide(
          //               color: Colors.grey[900]!,
          //               width: 2.0,
          //             ),
          //           ),
          //         ),
          //       ),
          //     ],
          //   ),
          // ),
          // SingleChildScrollView(
          //   scrollDirection: Axis.horizontal,
          //   child: Row(
          //       children: kCommunityLogo
          //           .asMap()
          //           .entries
          //           .map(
          //             (e) => CommunityIconBtn(
          //               icon: kCommunityLogo[e.key],
          //               link: kCommunityLinks[e.key],
          //               height: _communityLogoHeight[e.key],
          //             ),
          //           )
          //           .toList()),
          // ),
          Padding(
            padding: EdgeInsets.only(
              left: width * 0.02,
              right: width * 0.02,
            ),
            child: Row(
              children: [
                Expanded(
                  // flex: width < 1230 ? 2 : 1,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              AdaptiveText(
                                "3SDCL",
                                style: GoogleFonts.montserrat(
                                  color: kPrimaryColor,
                                  fontSize: height * 0.018,
                                  textStyle: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                textAlign: TextAlign.right,
                              ),
                              Padding(padding: EdgeInsets.all(12.0)),
                              AdaptiveText(
                                "Mobile Application Developer",
                                style: GoogleFonts.montserrat(
                                  fontSize: height * 0.015,
                                  color: Colors.grey[500],
                                  height: 2.0,
                                ),
                                textAlign: TextAlign.right,
                              ),
                              AdaptiveText(
                                "October 2022 - Present",
                                style: GoogleFonts.montserrat(
                                  fontSize: height * 0.015,
                                  color: Colors.grey[100],
                                  height: 2.0,
                                ),
                                textAlign: TextAlign.right,
                              ),
                              Padding(padding: EdgeInsets.all(12.0)),
                              AdaptiveText(
                                "Technologies",
                                style: GoogleFonts.montserrat(
                                  fontSize: height * 0.015,
                                  textStyle: TextStyle(fontWeight: FontWeight.bold),
                                  color: Colors.grey[100],
                                  height: 2.0,
                                ),
                                textAlign: TextAlign.start,
                              ),
                              Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
                                AdaptiveText(
                                  "\u2022",
                                  style: GoogleFonts.montserrat(
                                    fontSize: height * 0.015,
                                    color: Colors.grey[100],
                                    height: 2.0,
                                    textStyle: TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                AdaptiveText(
                                  "Android Native",
                                  style: GoogleFonts.montserrat(
                                    fontSize: height * 0.015,
                                    color: Colors.grey[100],
                                    height: 2.0,
                                  ),
                                ),
                              ]),
                              Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
                                AdaptiveText(
                                  "\u2022",
                                  style: GoogleFonts.montserrat(
                                    fontSize: height * 0.015,
                                    color: Colors.grey[100],
                                    height: 2.0,
                                    textStyle: TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                AdaptiveText(
                                  "Laravel",
                                  style: GoogleFonts.montserrat(
                                    fontSize: height * 0.015,
                                    color: Colors.grey[100],
                                    height: 2.0,
                                  ),
                                ),
                              ]),
                              Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
                                AdaptiveText(
                                  "\u2022",
                                  style: GoogleFonts.montserrat(
                                    fontSize: height * 0.015,
                                    color: Colors.grey[100],
                                    height: 2.0,
                                    textStyle: TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                AdaptiveText(
                                  "Biometrics",
                                  style: GoogleFonts.montserrat(
                                    fontSize: height * 0.015,
                                    color: Colors.grey[100],
                                    height: 2.0,
                                  ),
                                ),
                              ]),
                              Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
                                AdaptiveText(
                                  "\u2022",
                                  style: GoogleFonts.montserrat(
                                    fontSize: height * 0.015,
                                    color: Colors.grey[100],
                                    height: 2.0,
                                    textStyle: TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                AdaptiveText(
                                  "Google Maps",
                                  style: GoogleFonts.montserrat(
                                    fontSize: height * 0.015,
                                    color: Colors.grey[100],
                                    height: 2.0,
                                  ),
                                ),
                              ]),
                              Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
                                AdaptiveText(
                                  "\u2022",
                                  style: GoogleFonts.montserrat(
                                    fontSize: height * 0.015,
                                    color: Colors.grey[100],
                                    height: 2.0,
                                    textStyle: TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                AdaptiveText(
                                  "GIS",
                                  style: GoogleFonts.montserrat(
                                    fontSize: height * 0.015,
                                    color: Colors.grey[100],
                                    height: 2.0,
                                  ),
                                ),
                              ]),
                            ],
                          ),
                          Padding(padding: EdgeInsets.all(16.0)),
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
                                  AdaptiveText(
                                    "\u2022",
                                    style: GoogleFonts.montserrat(
                                      fontSize: height * 0.015,
                                      color: Colors.grey[100],
                                      height: 2.0,
                                      textStyle: TextStyle(fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Expanded(
                                    child: AdaptiveText(
                                      "Served as team lead of the developers",
                                      style: GoogleFonts.montserrat(
                                        fontSize: height * 0.015,
                                        color: Colors.grey[100],
                                        height: 2.0,
                                      ),
                                    ),
                                  ),
                                ]),
                                Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
                                  AdaptiveText(
                                    "\u2022",
                                    style: GoogleFonts.montserrat(
                                      fontSize: height * 0.015,
                                      color: Colors.grey[100],
                                      height: 2.0,
                                      textStyle: TextStyle(fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Expanded(
                                    child: AdaptiveText(
                                      "Developed first BETA version of storius app",
                                      style: GoogleFonts.montserrat(
                                        fontSize: height * 0.015,
                                        color: Colors.grey[100],
                                        height: 2.0,
                                      ),
                                    ),
                                  ),
                                ]),
                                Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
                                  AdaptiveText(
                                    "\u2022",
                                    style: GoogleFonts.montserrat(
                                      fontSize: height * 0.015,
                                      color: Colors.grey[100],
                                      height: 2.0,
                                      textStyle: TextStyle(fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Expanded(
                                    child: AdaptiveText(
                                      "Learned and implemented MVC architecture for production level of application",
                                      style: GoogleFonts.montserrat(
                                        fontSize: height * 0.015,
                                        color: Colors.grey[100],
                                        height: 2.0,
                                      ),
                                    ),
                                  ),
                                ]),
                                Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
                                  AdaptiveText(
                                    "\u2022",
                                    style: GoogleFonts.montserrat(
                                      fontSize: height * 0.015,
                                      color: Colors.grey[100],
                                      height: 2.0,
                                      textStyle: TextStyle(fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Expanded(
                                    child: AdaptiveText(
                                      "Integrated Google maps, live markers and interaction of users with it",
                                      style: GoogleFonts.montserrat(
                                        fontSize: height * 0.015,
                                        color: Colors.grey[100],
                                        height: 2.0,
                                      ),
                                    ),
                                  ),
                                ]),
                                Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
                                  AdaptiveText(
                                    "\u2022",
                                    style: GoogleFonts.montserrat(
                                      fontSize: height * 0.015,
                                      color: Colors.grey[100],
                                      height: 2.0,
                                      textStyle: TextStyle(fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Expanded(
                                    child: AdaptiveText(
                                      "Build an API and databases with laravel",
                                      style: GoogleFonts.montserrat(
                                        fontSize: height * 0.015,
                                        color: Colors.grey[100],
                                        height: 2.0,
                                      ),
                                    ),
                                  ),
                                ]),
                                Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
                                  AdaptiveText(
                                    "\u2022",
                                    style: GoogleFonts.montserrat(
                                      fontSize: height * 0.015,
                                      color: Colors.grey[100],
                                      height: 2.0,
                                      textStyle: TextStyle(fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  AdaptiveText(
                                    "Flutter",
                                    style: GoogleFonts.montserrat(
                                      fontSize: height * 0.015,
                                      color: Colors.grey[100],
                                      height: 2.0,
                                    ),
                                  ),
                                ]),
                                Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
                                  AdaptiveText(
                                    "\u2022",
                                    style: GoogleFonts.montserrat(
                                      fontSize: height * 0.015,
                                      color: Colors.grey[100],
                                      height: 2.0,
                                      textStyle: TextStyle(fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Expanded(
                                    child: AdaptiveText(
                                      "Added features in huge code base with scalability in mind, along with other concepts of OOP and design pattern",
                                      style: GoogleFonts.montserrat(
                                        fontSize: height * 0.015,
                                        color: Colors.grey[100],
                                        height: 2.0,
                                      ),
                                    ),
                                  ),
                                ]),
                                Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
                                  AdaptiveText(
                                    "\u2022",
                                    style: GoogleFonts.montserrat(
                                      fontSize: height * 0.015,
                                      color: Colors.grey[100],
                                      height: 2.0,
                                      textStyle: TextStyle(fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Expanded(
                                    child: AdaptiveText(
                                      "Maintaining layered architecture for better encapsulation and abstraction of code from Application layer to domain layer and to data layer",
                                      style: GoogleFonts.montserrat(
                                        fontSize: height * 0.015,
                                        color: Colors.grey[100],
                                        height: 2.0,
                                      ),
                                    ),
                                  ),
                                ]),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.all(height * 0.04),
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              AdaptiveText(
                                "Agrocenta Technologies Ltd",
                                style: GoogleFonts.montserrat(
                                  color: kPrimaryColor,
                                  fontSize: height * 0.018,
                                  textStyle: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                textAlign: TextAlign.right,
                              ),
                              Padding(padding: EdgeInsets.all(12.0)),
                              AdaptiveText(
                                "Mobile Application Developer",
                                style: GoogleFonts.montserrat(
                                  fontSize: height * 0.015,
                                  color: Colors.grey[500],
                                  height: 2.0,
                                ),
                                textAlign: TextAlign.right,
                              ),
                              AdaptiveText(
                                "April 2021 - August 2022",
                                style: GoogleFonts.montserrat(
                                  fontSize: height * 0.015,
                                  color: Colors.grey[100],
                                  height: 2.0,
                                ),
                                textAlign: TextAlign.right,
                              ),
                              Padding(padding: EdgeInsets.all(12.0)),
                              AdaptiveText(
                                "Technologies",
                                style: GoogleFonts.montserrat(
                                  fontSize: height * 0.015,
                                  textStyle: TextStyle(fontWeight: FontWeight.bold),
                                  color: Colors.grey[100],
                                  height: 2.0,
                                ),
                                textAlign: TextAlign.start,
                              ),
                              Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
                                AdaptiveText(
                                  "\u2022",
                                  style: GoogleFonts.montserrat(
                                    fontSize: height * 0.015,
                                    color: Colors.grey[100],
                                    height: 2.0,
                                    textStyle: TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                AdaptiveText(
                                  "Flutter",
                                  style: GoogleFonts.montserrat(
                                    fontSize: height * 0.015,
                                    color: Colors.grey[100],
                                    height: 2.0,
                                  ),
                                ),
                              ]),
                              Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
                                AdaptiveText(
                                  "\u2022",
                                  style: GoogleFonts.montserrat(
                                    fontSize: height * 0.015,
                                    color: Colors.grey[100],
                                    height: 2.0,
                                    textStyle: TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                AdaptiveText(
                                  "Dart",
                                  style: GoogleFonts.montserrat(
                                    fontSize: height * 0.015,
                                    color: Colors.grey[100],
                                    height: 2.0,
                                  ),
                                ),
                              ]),
                              Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
                                AdaptiveText(
                                  "\u2022",
                                  style: GoogleFonts.montserrat(
                                    fontSize: height * 0.015,
                                    color: Colors.grey[100],
                                    height: 2.0,
                                    textStyle: TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                AdaptiveText(
                                  "Rest APIs",
                                  style: GoogleFonts.montserrat(
                                    fontSize: height * 0.015,
                                    color: Colors.grey[100],
                                    height: 2.0,
                                  ),
                                ),
                              ]),
                            ],
                          ),
                          Padding(padding: EdgeInsets.all(16.0)),
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
                                  AdaptiveText(
                                    "\u2022",
                                    style: GoogleFonts.montserrat(
                                      fontSize: height * 0.015,
                                      color: Colors.grey[100],
                                      height: 2.0,
                                      textStyle: TextStyle(fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Expanded(
                                    child: AdaptiveText(
                                      "Working with flutter_bloc state management, alongside provider to maintain local states and global use cases",
                                      style: GoogleFonts.montserrat(
                                        fontSize: height * 0.015,
                                        color: Colors.grey[100],
                                        height: 2.0,
                                      ),
                                    ),
                                  ),
                                ]),
                                Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
                                  AdaptiveText(
                                    "\u2022",
                                    style: GoogleFonts.montserrat(
                                      fontSize: height * 0.015,
                                      color: Colors.grey[100],
                                      height: 2.0,
                                      textStyle: TextStyle(fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Expanded(
                                    child: AdaptiveText(
                                      "Handled local packages to maintain custom components and to maintain API architecture",
                                      style: GoogleFonts.montserrat(
                                        fontSize: height * 0.015,
                                        color: Colors.grey[100],
                                        height: 2.0,
                                      ),
                                    ),
                                  ),
                                ]),
                                Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
                                  AdaptiveText(
                                    "\u2022",
                                    style: GoogleFonts.montserrat(
                                      fontSize: height * 0.015,
                                      color: Colors.grey[100],
                                      height: 2.0,
                                      textStyle: TextStyle(fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Expanded(
                                    child: AdaptiveText(
                                      "Maintaining layered architecture for better encapsulation and abstraction of code from Application layer to domain layer and to data layer",
                                      style: GoogleFonts.montserrat(
                                        fontSize: height * 0.015,
                                        color: Colors.grey[100],
                                        height: 2.0,
                                      ),
                                    ),
                                  ),
                                ]),
                                Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
                                  AdaptiveText(
                                    "\u2022",
                                    style: GoogleFonts.montserrat(
                                      fontSize: height * 0.015,
                                      color: Colors.grey[100],
                                      height: 2.0,
                                      textStyle: TextStyle(fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Expanded(
                                    child: AdaptiveText(
                                      "Learned GitHub actions for CI/CD",
                                      style: GoogleFonts.montserrat(
                                        fontSize: height * 0.015,
                                        color: Colors.grey[100],
                                        height: 2.0,
                                      ),
                                    ),
                                  ),
                                ]),
                                Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
                                  AdaptiveText(
                                    "\u2022",
                                    style: GoogleFonts.montserrat(
                                      fontSize: height * 0.015,
                                      color: Colors.grey[100],
                                      height: 2.0,
                                      textStyle: TextStyle(fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Expanded(
                                    child: AdaptiveText(
                                      "Added features in huge code base with scalability in mind, along with other concepts of OOP and design pattern",
                                      style: GoogleFonts.montserrat(
                                        fontSize: height * 0.015,
                                        color: Colors.grey[100],
                                        height: 2.0,
                                      ),
                                    ),
                                  ),
                                ]),
                                Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
                                  AdaptiveText(
                                    "\u2022",
                                    style: GoogleFonts.montserrat(
                                      fontSize: height * 0.015,
                                      color: Colors.grey[100],
                                      height: 2.0,
                                      textStyle: TextStyle(fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Expanded(
                                    child: AdaptiveText(
                                      "Learned project management tools like Jira and Mural",
                                      style: GoogleFonts.montserrat(
                                        fontSize: height * 0.015,
                                        color: Colors.grey[100],
                                        height: 2.0,
                                      ),
                                    ),
                                  ),
                                ]),
                                Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
                                  AdaptiveText(
                                    "\u2022",
                                    style: GoogleFonts.montserrat(
                                      fontSize: height * 0.015,
                                      color: Colors.grey[100],
                                      height: 2.0,
                                      textStyle: TextStyle(fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Expanded(
                                    child: AdaptiveText(
                                      "Worked in Agile software methodology, worked in sprints and different team structures like Squads.",
                                      style: GoogleFonts.montserrat(
                                        fontSize: height * 0.015,
                                        color: Colors.grey[100],
                                        height: 2.0,
                                      ),
                                    ),
                                  ),
                                ]),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.all(height * 0.04),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
