import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:techrebel.dev/widget/project_link_button.dart';
import '../../widget/adaptive_text.dart';
import '../../widget/custom_text_heading.dart';
import '../../constants.dart';

class ProjectsDesktop extends StatefulWidget {
  const ProjectsDesktop({Key? key}) : super(key: key);

  @override
  State<ProjectsDesktop> createState() => _ProjectsDesktopState();
}

class _ProjectsDesktopState extends State<ProjectsDesktop> {
  ScrollController scrollController = ScrollController();
  double scrollValue = 0;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Container(
      padding: EdgeInsets.symmetric(horizontal: width * 0.02, vertical: height * 0.02),
      child: Column(
        children: [
          const CustomSectionHeading(text: "\Projects"),
          const CustomSectionSubHeading(text: "Here are few samples of my previous work\n\n"),
          SizedBox(
            height: width > 1200 ? height * 0.80 : width * 0.60,
            child:
                // ListView.separated(
                //   controller: scrollController,
                //   padding: const EdgeInsets.symmetric(vertical: 20.0),
                //   scrollDirection: Axis.horizontal,
                //   separatorBuilder: (context, index) {
                //     return VerticalDivider(
                //       color: Colors.transparent,
                //       width: width * 0.015,
                //     );
                //   },
                //   itemBuilder: (context, index) {
                //     return WidgetAnimator(
                //       child: ProjectCard(
                //         cardWidth: width < 1200 ? width * 0.3 : width * 0.35,
                //         cardHeight: width < 1200 ? height * 0.32 : height * 0.1,
                //         backImage: kProjectsBanner[index],
                //         projectIcon: kProjectsIcons[index],
                //         projectTitle: kProjectsTitles[index],
                //         projectDescription: kProjectsDescriptions[index],
                //         projectLink: kProjectsLinks[index],
                //       ),
                //     );
                //   },
                //   itemCount: 5,
                // ),
                Column(
              children: [
                SizedBox(
                  height: height * 0.04,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      alignment: Alignment.topCenter,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            width: width < 1200 ? width * 0.23 : width * 0.23,
                            height: width < 1200 ? height * 0.23 : height * 0.23,
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
                            width: width < 1200 ? width * 0.23 : width * 0.23,
                            height: width < 1200 ? height * 0.07 : height * 0.07,
                            alignment: Alignment.centerLeft,
                            padding: EdgeInsets.only(top: 5.0, left: height * 0.01, right: height * 0.01),
                            child: AdaptiveText(
                              "Razur",
                              style: GoogleFonts.montserrat(
                                fontSize: MediaQuery.of(context).size.height * 0.02,
                                fontWeight: FontWeight.w400,
                                color: Colors.grey[100],
                              ),
                              textAlign: TextAlign.center,
                            ),
                            decoration: BoxDecoration(color: Colors.grey[900]),
                          ),
                          Container(
                            width: width < 1200 ? width * 0.23 : width * 0.23,
                            alignment: Alignment.center,
                            padding: EdgeInsets.only(left: height * 0.01, right: height * 0.01, bottom: height * 0.02),
                            child: Row(
                              children: [
                                ProjectLinkButton(
                                    title: "Play", iconData: FontAwesomeIcons.googlePlay, onPressed: () {}),
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
                      width: height * 0.03,
                    ),
                    Container(
                      alignment: Alignment.topCenter,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            width: width < 1200 ? width * 0.23 : width * 0.23,
                            height: width < 1200 ? height * 0.23 : height * 0.23,
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
                            width: width < 1200 ? width * 0.23 : width * 0.23,
                            height: width < 1200 ? height * 0.07 : height * 0.07,
                            alignment: Alignment.centerLeft,
                            padding: EdgeInsets.only(top: 5.0, left: height * 0.01, right: height * 0.01),
                            child: AdaptiveText(
                              "Razur",
                              style: GoogleFonts.montserrat(
                                fontSize: MediaQuery.of(context).size.height * 0.02,
                                fontWeight: FontWeight.w400,
                                color: Colors.grey[100],
                              ),
                              textAlign: TextAlign.center,
                            ),
                            decoration: BoxDecoration(color: Colors.grey[900]),
                          ),
                          Container(
                            width: width < 1200 ? width * 0.23 : width * 0.23,
                            alignment: Alignment.center,
                            padding: EdgeInsets.only(left: height * 0.01, right: height * 0.01, bottom: height * 0.02),
                            child: Row(
                              children: [
                                ProjectLinkButton(
                                    title: "Play", iconData: FontAwesomeIcons.googlePlay, onPressed: () {}),
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
                      width: height * 0.03,
                    ),
                    Container(
                      alignment: Alignment.topCenter,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            width: width < 1200 ? width * 0.23 : width * 0.23,
                            height: width < 1200 ? height * 0.23 : height * 0.23,
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
                            width: width < 1200 ? width * 0.23 : width * 0.23,
                            height: width < 1200 ? height * 0.07 : height * 0.07,
                            alignment: Alignment.centerLeft,
                            padding: EdgeInsets.only(top: 5.0, left: height * 0.01, right: height * 0.01),
                            child: AdaptiveText(
                              "Razur",
                              style: GoogleFonts.montserrat(
                                fontSize: MediaQuery.of(context).size.height * 0.02,
                                fontWeight: FontWeight.w400,
                                color: Colors.grey[100],
                              ),
                              textAlign: TextAlign.center,
                            ),
                            decoration: BoxDecoration(color: Colors.grey[900]),
                          ),
                          Container(
                            width: width < 1200 ? width * 0.23 : width * 0.23,
                            alignment: Alignment.center,
                            padding: EdgeInsets.only(left: height * 0.01, right: height * 0.01, bottom: height * 0.02),
                            child: Row(
                              children: [
                                ProjectLinkButton(
                                    title: "Play", iconData: FontAwesomeIcons.googlePlay, onPressed: () {}),
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
                  ],
                ),
                SizedBox(
                  height: height * 0.03,
                ),
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Container(
                    alignment: Alignment.topCenter,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          width: width < 1200 ? width * 0.23 : width * 0.23,
                          height: width < 1200 ? height * 0.23 : height * 0.23,
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
                          width: width < 1200 ? width * 0.23 : width * 0.23,
                          height: width < 1200 ? height * 0.07 : height * 0.07,
                          alignment: Alignment.centerLeft,
                          padding: EdgeInsets.only(top: 5.0, left: height * 0.01, right: height * 0.01),
                          child: AdaptiveText(
                            "Razur",
                            style: GoogleFonts.montserrat(
                              fontSize: MediaQuery.of(context).size.height * 0.02,
                              fontWeight: FontWeight.w400,
                              color: Colors.grey[100],
                            ),
                            textAlign: TextAlign.center,
                          ),
                          decoration: BoxDecoration(color: Colors.grey[900]),
                        ),
                        Container(
                          width: width < 1200 ? width * 0.23 : width * 0.23,
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
                    width: height * 0.03,
                  ),
                  Container(
                    alignment: Alignment.topCenter,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          width: width < 1200 ? width * 0.23 : width * 0.23,
                          height: width < 1200 ? height * 0.23 : height * 0.23,
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
                          width: width < 1200 ? width * 0.23 : width * 0.23,
                          height: width < 1200 ? height * 0.07 : height * 0.07,
                          alignment: Alignment.centerLeft,
                          padding: EdgeInsets.only(top: 5.0, left: height * 0.01, right: height * 0.01),
                          child: AdaptiveText(
                            "Razur",
                            style: GoogleFonts.montserrat(
                              fontSize: MediaQuery.of(context).size.height * 0.02,
                              fontWeight: FontWeight.w400,
                              color: Colors.grey[100],
                            ),
                            textAlign: TextAlign.center,
                          ),
                          decoration: BoxDecoration(color: Colors.grey[900]),
                        ),
                        Container(
                          width: width < 1200 ? width * 0.23 : width * 0.23,
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
                    width: height * 0.03,
                  ),
                  Container(
                    alignment: Alignment.topCenter,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          width: width < 1200 ? width * 0.23 : width * 0.23,
                          height: width < 1200 ? height * 0.23 : height * 0.23,
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
                          width: width < 1200 ? width * 0.23 : width * 0.23,
                          height: width < 1200 ? height * 0.07 : height * 0.07,
                          alignment: Alignment.centerLeft,
                          padding: EdgeInsets.only(top: 5.0, left: height * 0.01, right: height * 0.01),
                          child: AdaptiveText(
                            "Razur",
                            style: GoogleFonts.montserrat(
                              fontSize: MediaQuery.of(context).size.height * 0.02,
                              fontWeight: FontWeight.w400,
                              color: Colors.grey[100],
                            ),
                            textAlign: TextAlign.center,
                          ),
                          decoration: BoxDecoration(color: Colors.grey[900]),
                        ),
                        Container(
                          width: width < 1200 ? width * 0.23 : width * 0.23,
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
                ]),
              ],
            ),
          ),
          Column(
            children: [Row(children: [])],
          ),
          SizedBox(
            height: height * 0.02,
          ),
          // Slider(
          //   value: scrollValue,
          //   min: 0,
          //   onChanged: (value) {
          //     setState(() {
          //       scrollValue = value;
          //       scrollController.animateTo(
          //         value * width,
          //         duration: const Duration(milliseconds: 300),
          //         curve: Curves.ease,
          //       );
          //     });
          //   },
          // ),
        ],
      ),
    );
  }
}
