import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../constants.dart';
import '../../widget/adaptive_text.dart';
import '../../widget/custom_button.dart';
import '../../widget/custom_text_heading.dart';
import '../../widget/project_link_button.dart';

class ProjectsMobile extends StatelessWidget {
  const ProjectsMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        const CustomSectionHeading(text: "\nPortfolio"),
        const CustomSectionSubHeading(text: "Here are few samples of my previous work :)\n\n"),
        // CarouselSlider.builder(
        //   itemCount: 10,
        //   itemBuilder: (BuildContext context, int itemIndex, int i) => Padding(
        //     padding: const EdgeInsets.symmetric(vertical: 15.0),
        //     child: ProjectCard(
        //       cardWidth: width < 650 ? width * 0.8 : width * 0.4,
        //       projectIcon: kProjectsIcons[i],
        //       projectTitle: kProjectsTitles[i],
        //       projectDescription: kProjectsDescriptions[i],
        //       projectLink: kProjectsLinks[i],
        //     ),
        //   ),
        //   options: CarouselOptions(
        //       height: height * 0.4,
        //       autoPlay: true,
        //       autoPlayInterval: const Duration(seconds: 5),
        //       enlargeCenterPage: true,
        //       autoPlayCurve: Curves.fastOutSlowIn,
        //       autoPlayAnimationDuration: const Duration(milliseconds: 800),
        //       enableInfiniteScroll: false),
        // ),
        Container(
          width: width < 650 ? width * 0.8 : width * 0.4,
          alignment: Alignment.topCenter,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: width < 650 ? width * 0.8 : width * 0.4,
                height: width < 650 ? height * 0.35 : height * 0.35,
                alignment: Alignment.center,
                // child: AdaptiveText(
                //   "May",
                //   style: GoogleFonts.montserrat(
                //     fontSize: MediaQuery.of(context).size.height * 0.02,
                //     fontWeight: FontWeight.w800,
                //     color: Colors.black,
                //   ),
                //   textAlign: TextAlign.center,
                // ),
                decoration: BoxDecoration(
                  // color: Colors.green,
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
                height: width < 650 ? height * 0.08 : height * 0.08,
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
                padding: EdgeInsets.only(left: height * 0.01, right: height * 0.01, bottom: height * 0.02),
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
          height: height * 0.03,
        ),
        Container(
          width: width < 650 ? width * 0.8 : width * 0.4,
          alignment: Alignment.topCenter,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: width < 650 ? width * 0.8 : width * 0.4,
                height: width < 650 ? height * 0.35 : height * 0.35,
                alignment: Alignment.center,
                // child: AdaptiveText(
                //   "May",
                //   style: GoogleFonts.montserrat(
                //     fontSize: MediaQuery.of(context).size.height * 0.02,
                //     fontWeight: FontWeight.w800,
                //     color: Colors.black,
                //   ),
                //   textAlign: TextAlign.center,
                // ),
                decoration: BoxDecoration(
                  // color: Colors.green,
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
                height: width < 650 ? height * 0.08 : height * 0.08,
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
                padding: EdgeInsets.only(left: height * 0.01, right: height * 0.01, bottom: height * 0.02),
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
          height: height * 0.03,
        ),
        Container(
          width: width < 650 ? width * 0.8 : width * 0.4,
          alignment: Alignment.topCenter,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: width < 650 ? width * 0.8 : width * 0.4,
                height: width < 650 ? height * 0.35 : height * 0.35,
                alignment: Alignment.center,
                // child: AdaptiveText(
                //   "May",
                //   style: GoogleFonts.montserrat(
                //     fontSize: MediaQuery.of(context).size.height * 0.02,
                //     fontWeight: FontWeight.w800,
                //     color: Colors.black,
                //   ),
                //   textAlign: TextAlign.center,
                // ),
                decoration: BoxDecoration(
                  // color: Colors.green,
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
                height: width < 650 ? height * 0.08 : height * 0.08,
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
                padding: EdgeInsets.only(left: height * 0.01, right: height * 0.01, bottom: height * 0.02),
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
          height: height * 0.03,
        ),
        Container(
          width: width < 650 ? width * 0.8 : width * 0.4,
          alignment: Alignment.topCenter,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: width < 650 ? width * 0.8 : width * 0.4,
                height: width < 650 ? height * 0.35 : height * 0.35,
                alignment: Alignment.center,
                // child: AdaptiveText(
                //   "May",
                //   style: GoogleFonts.montserrat(
                //     fontSize: MediaQuery.of(context).size.height * 0.02,
                //     fontWeight: FontWeight.w800,
                //     color: Colors.black,
                //   ),
                //   textAlign: TextAlign.center,
                // ),
                decoration: BoxDecoration(
                  // color: Colors.green,
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
                height: width < 650 ? height * 0.08 : height * 0.08,
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
                padding: EdgeInsets.only(left: height * 0.01, right: height * 0.01, bottom: height * 0.02),
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
          height: height * 0.03,
        ),
        Container(
          width: width < 650 ? width * 0.8 : width * 0.4,
          alignment: Alignment.topCenter,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: width < 650 ? width * 0.8 : width * 0.4,
                height: width < 650 ? height * 0.35 : height * 0.35,
                alignment: Alignment.center,
                // child: AdaptiveText(
                //   "May",
                //   style: GoogleFonts.montserrat(
                //     fontSize: MediaQuery.of(context).size.height * 0.02,
                //     fontWeight: FontWeight.w800,
                //     color: Colors.black,
                //   ),
                //   textAlign: TextAlign.center,
                // ),
                decoration: BoxDecoration(
                  // color: Colors.green,
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
                height: width < 650 ? height * 0.08 : height * 0.08,
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
                padding: EdgeInsets.only(left: height * 0.01, right: height * 0.01, bottom: height * 0.02),
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
          height: height * 0.03,
        ),
        Container(
          width: width < 650 ? width * 0.8 : width * 0.4,
          alignment: Alignment.topCenter,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: width < 650 ? width * 0.8 : width * 0.4,
                height: width < 650 ? height * 0.35 : height * 0.35,
                alignment: Alignment.center,
                // child: AdaptiveText(
                //   "May",
                //   style: GoogleFonts.montserrat(
                //     fontSize: MediaQuery.of(context).size.height * 0.02,
                //     fontWeight: FontWeight.w800,
                //     color: Colors.black,
                //   ),
                //   textAlign: TextAlign.center,
                // ),
                decoration: BoxDecoration(
                  // color: Colors.green,
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
                height: width < 650 ? height * 0.08 : height * 0.08,
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
                padding: EdgeInsets.only(left: height * 0.01, right: height * 0.01, bottom: height * 0.02),
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
          height: height * 0.03,
        ),
        OutlinedCustomBtn(
          btnText: "See More",
          onPressed: () {
            launchURL("https://github.com/senyomotey");
          },
        ),
        SizedBox(
          height: height * 0.04,
        ),
      ],
    );
  }
}
