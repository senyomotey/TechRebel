import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../constants.dart';
import '../../widget/adaptive_text.dart';
import '../../widget/custom_button.dart';
import '../../widget/custom_text_heading.dart';
import '../../widget/project_link_button.dart';

class ProjectsTab extends StatelessWidget {
  const ProjectsTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        const CustomSectionHeading(text: "\nPortfolio"),
        const CustomSectionSubHeading(text: "Here are few samples of my previous work :)\n\n"),
        Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Container(
            width: width < 650 ? width * 0.8 : width * 0.4,
            alignment: Alignment.topCenter,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  width: width < 650 ? width * 0.8 : width * 0.4,
                  height: width < 650 ? height * 0.23 : height * 0.23,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(kProjectsBanner[1]),
                      fit: BoxFit.fill,
                    ),
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(8.0),
                      topRight: Radius.circular(8.0),
                      bottomLeft: Radius.circular(8.0),
                      bottomRight: Radius.circular(8.0),
                    ),
                  ),
                ),
                Container(
                  width: width < 650 ? width * 0.8 : width * 0.4,
                  height: width < 650 ? height * 0.06 : height * 0.06,
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.only(top: 5.0, left: height * 0.01, right: height * 0.01),
                  child: AdaptiveText(
                    "Razur",
                    style: GoogleFonts.montserrat(
                      fontSize: MediaQuery.of(context).size.height * 0.025,
                      fontWeight: FontWeight.w400,
                      color: Colors.grey[100],
                    ),
                    textAlign: TextAlign.center,
                  ),
                  decoration: BoxDecoration(color: Colors.grey[900]),
                ),
                Container(
                  width: width < 650 ? width * 0.8 : width * 0.4,
                  alignment: Alignment.center,
                  padding: EdgeInsets.only(left: height * 0.01, right: height * 0.01, bottom: height * 0.015),
                  child: Row(
                    children: [
                      ProjectLinkButton(title: "Play", iconData: FontAwesomeIcons.googlePlay, onPressed: () {}),
                      SizedBox(
                        width: height * 0.01,
                      ),
                      ProjectLinkButton(title: "Web", iconData: FontAwesomeIcons.chrome, onPressed: () {}),
                      SizedBox(
                        width: height * 0.01,
                      ),
                      ProjectLinkButton(title: "Github", iconData: FontAwesomeIcons.github, onPressed: () {})
                    ],
                  ),
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(8.0),
                      bottomRight: Radius.circular(8.0),
                    ),
                    color: Colors.grey[900],
                  ),
                ),
              ],
            ),
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(8.0),
                topRight: Radius.circular(8.0),
                bottomLeft: Radius.circular(8.0),
                bottomRight: Radius.circular(8.0),
              ),
              color: Colors.grey[900],
            ),
          ),
          SizedBox(
            width: height * 0.025,
          ),
          Container(
            width: width < 650 ? width * 0.8 : width * 0.4,
            alignment: Alignment.topCenter,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  width: width < 650 ? width * 0.8 : width * 0.4,
                  height: width < 650 ? height * 0.23 : height * 0.23,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(kProjectsBanner[1]),
                      fit: BoxFit.fill,
                    ),
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(8.0),
                      topRight: Radius.circular(8.0),
                      bottomLeft: Radius.circular(8.0),
                      bottomRight: Radius.circular(8.0),
                    ),
                  ),
                ),
                Container(
                  width: width < 650 ? width * 0.8 : width * 0.4,
                  height: width < 650 ? height * 0.06 : height * 0.06,
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.only(top: 5.0, left: height * 0.01, right: height * 0.01),
                  child: AdaptiveText(
                    "Razur",
                    style: GoogleFonts.montserrat(
                      fontSize: MediaQuery.of(context).size.height * 0.025,
                      fontWeight: FontWeight.w400,
                      color: Colors.grey[100],
                    ),
                    textAlign: TextAlign.center,
                  ),
                  decoration: BoxDecoration(color: Colors.grey[900]),
                ),
                Container(
                  width: width < 650 ? width * 0.8 : width * 0.4,
                  alignment: Alignment.center,
                  padding: EdgeInsets.only(left: height * 0.01, right: height * 0.01, bottom: height * 0.015),
                  child: Row(
                    children: [
                      ProjectLinkButton(title: "Play", iconData: FontAwesomeIcons.googlePlay, onPressed: () {}),
                      SizedBox(
                        width: height * 0.01,
                      ),
                      ProjectLinkButton(title: "Web", iconData: FontAwesomeIcons.chrome, onPressed: () {}),
                      SizedBox(
                        width: height * 0.01,
                      ),
                      ProjectLinkButton(title: "Github", iconData: FontAwesomeIcons.github, onPressed: () {})
                    ],
                  ),
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(8.0),
                      bottomRight: Radius.circular(8.0),
                    ),
                    color: Colors.grey[900],
                  ),
                ),
              ],
            ),
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(8.0),
                topRight: Radius.circular(8.0),
                bottomLeft: Radius.circular(8.0),
                bottomRight: Radius.circular(8.0),
              ),
              color: Colors.grey[900],
            ),
          ),
        ]),
        SizedBox(
          height: height * 0.03,
        ),
        Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Container(
            width: width < 650 ? width * 0.8 : width * 0.4,
            alignment: Alignment.topCenter,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  width: width < 650 ? width * 0.8 : width * 0.4,
                  height: width < 650 ? height * 0.23 : height * 0.23,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(kProjectsBanner[1]),
                      fit: BoxFit.fill,
                    ),
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(8.0),
                      topRight: Radius.circular(8.0),
                      bottomLeft: Radius.circular(8.0),
                      bottomRight: Radius.circular(8.0),
                    ),
                  ),
                ),
                Container(
                  width: width < 650 ? width * 0.8 : width * 0.4,
                  height: width < 650 ? height * 0.06 : height * 0.06,
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.only(top: 5.0, left: height * 0.01, right: height * 0.01),
                  child: AdaptiveText(
                    "Razur",
                    style: GoogleFonts.montserrat(
                      fontSize: MediaQuery.of(context).size.height * 0.025,
                      fontWeight: FontWeight.w400,
                      color: Colors.grey[100],
                    ),
                    textAlign: TextAlign.center,
                  ),
                  decoration: BoxDecoration(color: Colors.grey[900]),
                ),
                Container(
                  width: width < 650 ? width * 0.8 : width * 0.4,
                  alignment: Alignment.center,
                  padding: EdgeInsets.only(left: height * 0.01, right: height * 0.01, bottom: height * 0.015),
                  child: Row(
                    children: [
                      ProjectLinkButton(title: "Play", iconData: FontAwesomeIcons.googlePlay, onPressed: () {}),
                      SizedBox(
                        width: height * 0.01,
                      ),
                      ProjectLinkButton(title: "Web", iconData: FontAwesomeIcons.chrome, onPressed: () {}),
                      SizedBox(
                        width: height * 0.01,
                      ),
                      ProjectLinkButton(title: "Github", iconData: FontAwesomeIcons.github, onPressed: () {})
                    ],
                  ),
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(8.0),
                      bottomRight: Radius.circular(8.0),
                    ),
                    color: Colors.grey[900],
                  ),
                ),
              ],
            ),
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(8.0),
                topRight: Radius.circular(8.0),
                bottomLeft: Radius.circular(8.0),
                bottomRight: Radius.circular(8.0),
              ),
              color: Colors.grey[900],
            ),
          ),
          SizedBox(
            width: height * 0.025,
          ),
          Container(
            width: width < 650 ? width * 0.8 : width * 0.4,
            alignment: Alignment.topCenter,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  width: width < 650 ? width * 0.8 : width * 0.4,
                  height: width < 650 ? height * 0.23 : height * 0.23,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(kProjectsBanner[1]),
                      fit: BoxFit.fill,
                    ),
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(8.0),
                      topRight: Radius.circular(8.0),
                      bottomLeft: Radius.circular(8.0),
                      bottomRight: Radius.circular(8.0),
                    ),
                  ),
                ),
                Container(
                  width: width < 650 ? width * 0.8 : width * 0.4,
                  height: width < 650 ? height * 0.06 : height * 0.06,
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.only(top: 5.0, left: height * 0.01, right: height * 0.01),
                  child: AdaptiveText(
                    "Razur",
                    style: GoogleFonts.montserrat(
                      fontSize: MediaQuery.of(context).size.height * 0.025,
                      fontWeight: FontWeight.w400,
                      color: Colors.grey[100],
                    ),
                    textAlign: TextAlign.center,
                  ),
                  decoration: BoxDecoration(color: Colors.grey[900]),
                ),
                Container(
                  width: width < 650 ? width * 0.8 : width * 0.4,
                  alignment: Alignment.center,
                  padding: EdgeInsets.only(left: height * 0.01, right: height * 0.01, bottom: height * 0.015),
                  child: Row(
                    children: [
                      ProjectLinkButton(title: "Play", iconData: FontAwesomeIcons.googlePlay, onPressed: () {}),
                      SizedBox(
                        width: height * 0.01,
                      ),
                      ProjectLinkButton(title: "Web", iconData: FontAwesomeIcons.chrome, onPressed: () {}),
                      SizedBox(
                        width: height * 0.01,
                      ),
                      ProjectLinkButton(title: "Github", iconData: FontAwesomeIcons.github, onPressed: () {})
                    ],
                  ),
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(8.0),
                      bottomRight: Radius.circular(8.0),
                    ),
                    color: Colors.grey[900],
                  ),
                ),
              ],
            ),
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(8.0),
                topRight: Radius.circular(8.0),
                bottomLeft: Radius.circular(8.0),
                bottomRight: Radius.circular(8.0),
              ),
              color: Colors.grey[900],
            ),
          ),
        ]),
        SizedBox(
          height: height * 0.03,
        ),
        Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Container(
            width: width < 650 ? width * 0.8 : width * 0.4,
            alignment: Alignment.topCenter,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  width: width < 650 ? width * 0.8 : width * 0.4,
                  height: width < 650 ? height * 0.23 : height * 0.23,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(kProjectsBanner[1]),
                      fit: BoxFit.fill,
                    ),
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(8.0),
                      topRight: Radius.circular(8.0),
                      bottomLeft: Radius.circular(8.0),
                      bottomRight: Radius.circular(8.0),
                    ),
                  ),
                ),
                Container(
                  width: width < 650 ? width * 0.8 : width * 0.4,
                  height: width < 650 ? height * 0.06 : height * 0.06,
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.only(top: 5.0, left: height * 0.01, right: height * 0.01),
                  child: AdaptiveText(
                    "Razur",
                    style: GoogleFonts.montserrat(
                      fontSize: MediaQuery.of(context).size.height * 0.025,
                      fontWeight: FontWeight.w400,
                      color: Colors.grey[100],
                    ),
                    textAlign: TextAlign.center,
                  ),
                  decoration: BoxDecoration(color: Colors.grey[900]),
                ),
                Container(
                  width: width < 650 ? width * 0.8 : width * 0.4,
                  alignment: Alignment.center,
                  padding: EdgeInsets.only(left: height * 0.01, right: height * 0.01, bottom: height * 0.015),
                  child: Row(
                    children: [
                      ProjectLinkButton(title: "Play", iconData: FontAwesomeIcons.googlePlay, onPressed: () {}),
                      SizedBox(
                        width: height * 0.01,
                      ),
                      ProjectLinkButton(title: "Web", iconData: FontAwesomeIcons.chrome, onPressed: () {}),
                      SizedBox(
                        width: height * 0.01,
                      ),
                      ProjectLinkButton(title: "Github", iconData: FontAwesomeIcons.github, onPressed: () {})
                    ],
                  ),
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(8.0),
                      bottomRight: Radius.circular(8.0),
                    ),
                    color: Colors.grey[900],
                  ),
                ),
              ],
            ),
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(8.0),
                topRight: Radius.circular(8.0),
                bottomLeft: Radius.circular(8.0),
                bottomRight: Radius.circular(8.0),
              ),
              color: Colors.grey[900],
            ),
          ),
          SizedBox(
            width: height * 0.025,
          ),
          Container(
            width: width < 650 ? width * 0.8 : width * 0.4,
            alignment: Alignment.topCenter,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  width: width < 650 ? width * 0.8 : width * 0.4,
                  height: width < 650 ? height * 0.23 : height * 0.23,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(kProjectsBanner[1]),
                      fit: BoxFit.fill,
                    ),
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(8.0),
                      topRight: Radius.circular(8.0),
                      bottomLeft: Radius.circular(8.0),
                      bottomRight: Radius.circular(8.0),
                    ),
                  ),
                ),
                Container(
                  width: width < 650 ? width * 0.8 : width * 0.4,
                  height: width < 650 ? height * 0.06 : height * 0.06,
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.only(top: 5.0, left: height * 0.01, right: height * 0.01),
                  child: AdaptiveText(
                    "Razur",
                    style: GoogleFonts.montserrat(
                      fontSize: MediaQuery.of(context).size.height * 0.025,
                      fontWeight: FontWeight.w400,
                      color: Colors.grey[100],
                    ),
                    textAlign: TextAlign.center,
                  ),
                  decoration: BoxDecoration(color: Colors.grey[900]),
                ),
                Container(
                  width: width < 650 ? width * 0.8 : width * 0.4,
                  alignment: Alignment.center,
                  padding: EdgeInsets.only(left: height * 0.01, right: height * 0.01, bottom: height * 0.015),
                  child: Row(
                    children: [
                      ProjectLinkButton(title: "Play", iconData: FontAwesomeIcons.googlePlay, onPressed: () {}),
                      SizedBox(
                        width: height * 0.01,
                      ),
                      ProjectLinkButton(title: "Web", iconData: FontAwesomeIcons.chrome, onPressed: () {}),
                      SizedBox(
                        width: height * 0.01,
                      ),
                      ProjectLinkButton(title: "Github", iconData: FontAwesomeIcons.github, onPressed: () {})
                    ],
                  ),
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(8.0),
                      bottomRight: Radius.circular(8.0),
                    ),
                    color: Colors.grey[900],
                  ),
                ),
              ],
            ),
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(8.0),
                topRight: Radius.circular(8.0),
                bottomLeft: Radius.circular(8.0),
                bottomRight: Radius.circular(8.0),
              ),
              color: Colors.grey[900],
            ),
          ),
        ]),
        SizedBox(
          height: height * 0.03,
        ),
        ElevatedButton(
          onPressed: () {
            ;
            launchURL("https://github.com/senyomotey");
          },
          child: Text(
            "See More",
            style: GoogleFonts.montserrat(
                fontSize: MediaQuery.of(context).size.height * 0.016, color: Colors.white, fontWeight: FontWeight.w500),
          ),
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.red[900],
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
            padding: EdgeInsets.only(
              top: MediaQuery.of(context).size.height * 0.0115,
              left: MediaQuery.of(context).size.height * 0.011,
              right: MediaQuery.of(context).size.height * 0.011,
              bottom: MediaQuery.of(context).size.height * 0.0115,
            ),
          ),
        ),
        // OutlinedCustomBtn(
        //   btnText: "See More",
        //   onPressed: () {
        //     launchURL("https://github.com/senyomotey");
        //   },
        // ),
      ],
    );
  }
}
