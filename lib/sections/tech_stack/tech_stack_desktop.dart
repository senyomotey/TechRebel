import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:ionicons/ionicons.dart';
import 'package:techrebel.dev/widget/tech_stack_card.dart';
import '../../animations/entrance_fader.dart';
import '../../provider/theme_provider.dart';
import '../../widget/adaptive_text.dart';
import '../../widget/custom_text_heading.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class TechStackDesktop extends StatelessWidget {
  const TechStackDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Column(children: [
      const CustomSectionHeading(text: "\Tech Stack"),
      const CustomSectionSubHeading(
          text:
              "Change is inevitable, so I keep on exploring new technology, learn it in a minimal possible way and then build something out of it to see how well I did"),
      const Padding(padding: EdgeInsets.all(30.0)),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            // margin: EdgeInsets.fromLTRB(width * 0.1, height * 0.2, width * 0.1, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // SizedBox(
                //   height: height * 0.04,
                // ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AdaptiveText(
                      "Mobile development",
                      style: GoogleFonts.montserrat(
                        fontSize: height * 0.0115,
                        color: Colors.grey[500],
                        height: 2.0,
                      ),
                      textAlign: TextAlign.right,
                    ),
                    SizedBox(
                      height: height * 0.018,
                    ),
                    Row(
                      children: [
                        TechStackCard(
                            title: "Flutter",
                            iconData: Icons.flutter_dash,
                            icon: Logo(
                              Logos.flutter,
                              size: MediaQuery.of(context).size.height * 0.026,
                            ),
                            onPressed: () {}),
                        SizedBox(
                          width: height * 0.018,
                        ),
                        TechStackCard(title: "Dart", iconData: Icons.code_sharp, onPressed: () {})
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: height * 0.018,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AdaptiveText(
                      "Web development",
                      style: GoogleFonts.montserrat(
                        fontSize: height * 0.0115,
                        color: Colors.grey[500],
                        height: 2.0,
                      ),
                      textAlign: TextAlign.right,
                    ),
                    SizedBox(
                      height: height * 0.018,
                    ),
                    Row(
                      children: [
                        TechStackCard(
                            title: "HTML5",
                            iconData: FontAwesomeIcons.html5,
                            icon: Logo(
                              Logos.html,
                              size: MediaQuery.of(context).size.height * 0.026,
                            ),
                            onPressed: () {}),
                        SizedBox(
                          width: height * 0.018,
                        ),
                        TechStackCard(
                            title: "CSS3",
                            iconData: FontAwesomeIcons.css3,
                            icon: Logo(
                              Logos.css_alt,
                              size: MediaQuery.of(context).size.height * 0.026,
                            ),
                            onPressed: () {}),
                        SizedBox(
                          width: height * 0.018,
                        ),
                        TechStackCard(
                            title: "Bootstrap",
                            iconData: FontAwesomeIcons.bootstrap,
                            icon: Logo(
                              Logos.bootstrap,
                              size: MediaQuery.of(context).size.height * 0.026,
                            ),
                            onPressed: () {}),
                        SizedBox(
                          width: height * 0.018,
                        ),
                        TechStackCard(title: "Tailwind", iconData: Ionicons.code, onPressed: () {}),
                        SizedBox(
                          width: height * 0.018,
                        ),
                        TechStackCard(
                            title: "Javascript",
                            iconData: Ionicons.logo_javascript,
                            icon: Logo(
                              Logos.javascript,
                              size: MediaQuery.of(context).size.height * 0.026,
                            ),
                            onPressed: () {})
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: height * 0.018,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AdaptiveText(
                      "Server side",
                      style: GoogleFonts.montserrat(
                        fontSize: height * 0.0115,
                        color: Colors.grey[500],
                        height: 2.0,
                      ),
                      textAlign: TextAlign.right,
                    ),
                    SizedBox(
                      height: height * 0.018,
                    ),
                    Row(
                      children: [
                        TechStackCard(
                            title: "PHP",
                            iconData: Icons.php,
                            icon: Logo(
                              Logos.php,
                              size: MediaQuery.of(context).size.height * 0.026,
                            ),
                            onPressed: () {}),
                        SizedBox(
                          width: height * 0.018,
                        ),
                        TechStackCard(title: "REST APIs", iconData: FontAwesomeIcons.server, onPressed: () {})
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: height * 0.018,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AdaptiveText(
                      "Databases",
                      style: GoogleFonts.montserrat(
                        fontSize: height * 0.0115,
                        color: Colors.grey[500],
                        height: 2.0,
                      ),
                      textAlign: TextAlign.right,
                    ),
                    SizedBox(
                      height: height * 0.018,
                    ),
                    Row(
                      children: [
                        TechStackCard(
                            title: "PostgreSQL",
                            iconData: Bootstrap.database,
                            icon: Logo(
                              Logos.postgresql,
                              size: MediaQuery.of(context).size.height * 0.026,
                            ),
                            onPressed: () {}),
                        SizedBox(
                          width: height * 0.018,
                        ),
                        TechStackCard(
                            title: "MongoDB",
                            iconData: Bootstrap.database,
                            icon: Logo(
                              Logos.mongodb,
                              size: MediaQuery.of(context).size.height * 0.026,
                            ),
                            onPressed: () {}),
                        SizedBox(
                          width: height * 0.018,
                        ),
                        TechStackCard(
                            title: "Firebase",
                            iconData: FontAwesomeIcons.database,
                            icon: Logo(
                              Logos.firebase,
                              size: MediaQuery.of(context).size.height * 0.026,
                            ),
                            onPressed: () {}),
                        SizedBox(
                          width: height * 0.018,
                        ),
                        TechStackCard(title: "SQL", iconData: FontAwesomeIcons.database, onPressed: () {})
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: height * 0.018,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AdaptiveText(
                      "Version controlling and task management",
                      style: GoogleFonts.montserrat(
                        fontSize: height * 0.0115,
                        color: Colors.grey[500],
                        height: 2.0,
                      ),
                      textAlign: TextAlign.right,
                    ),
                    SizedBox(
                      height: height * 0.018,
                    ),
                    Row(
                      children: [
                        TechStackCard(
                            title: "Git & Github",
                            iconData: FontAwesomeIcons.github,
                            icon: Logo(
                              Logos.gitlab,
                              size: MediaQuery.of(context).size.height * 0.026,
                            ),
                            onPressed: () {}),
                        SizedBox(
                          width: height * 0.018,
                        ),
                        TechStackCard(
                            title: "Jira",
                            iconData: Icons.dry_cleaning_outlined,
                            icon: Logo(
                              Logos.jira,
                              size: MediaQuery.of(context).size.height * 0.026,
                            ),
                            onPressed: () {}),
                        SizedBox(
                          width: height * 0.018,
                        ),
                        TechStackCard(
                            title: "Asana",
                            iconData: Icons.dry_cleaning_outlined,
                            icon: Logo(
                              Logos.asana,
                              size: MediaQuery.of(context).size.height * 0.026,
                            ),
                            onPressed: () {}),
                        SizedBox(
                          width: height * 0.018,
                        ),
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: height * 0.018,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AdaptiveText(
                      "UI/UX",
                      style: GoogleFonts.montserrat(
                        fontSize: height * 0.0115,
                        color: Colors.grey[500],
                        height: 2.0,
                      ),
                      textAlign: TextAlign.right,
                    ),
                    SizedBox(
                      height: height * 0.018,
                    ),
                    Row(
                      children: [
                        TechStackCard(
                            title: "Figma",
                            iconData: FontAwesomeIcons.figma,
                            icon: Logo(
                              Logos.figma,
                              size: MediaQuery.of(context).size.height * 0.026,
                            ),
                            onPressed: () {}),
                        SizedBox(
                          width: height * 0.018,
                        ),
                        TechStackCard(
                            title: "Adobe XD",
                            iconData: Icons.dry_cleaning_outlined,
                            icon: Logo(
                              Logos.adobe,
                              size: MediaQuery.of(context).size.height * 0.026,
                            ),
                            onPressed: () {})
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: height * 0.05,
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(height * 0.05),
          ),
          Positioned(
            top: width < 1200 ? height * 0.15 : height * 0.1,
            right: width * 0.01,
            child: Opacity(
              opacity: 0.9,
              child: EntranceFader(
                offset: const Offset(0, 0),
                delay: const Duration(seconds: 1),
                duration: const Duration(milliseconds: 800),
                child: SvgPicture.asset(
                  'assets/stack.svg',
                ),
              ),
            ),
          ),
        ],
      ),
    ]);
  }
}
