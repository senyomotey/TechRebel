import 'dart:html';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:icons_plus/icons_plus.dart';
import '../../constants.dart';
import '../../provider/theme_provider.dart';
import '../../widget/adaptive_text.dart';
import '../../widget/custom_text_heading.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../../widget/photo_card.dart';

class AboutDesktop extends StatelessWidget {
  final _communityLogoHeight = [60.0, 70.0, 30.0, 70.0];

  AboutDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: width * 0.02,
      ),
      color: themeProvider.lightTheme ? Colors.white : Colors.black,
      child: Column(
        children: [
          const CustomSectionHeading(text: "\nAbout Me"),
          const CustomSectionSubHeading(text: "Get to know me"),
          SizedBox(height: height * 0.05),
          Container(
            // padding: EdgeInsets.only(left: width < 1230 ? 25.0 : 0),
            padding: EdgeInsets.only(
              left: height * 0.2,
              right: height * 0.2,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AdaptiveText(
                        "I'm Senyo Motey, a Flutter Developer, Laravel Developer and UI designer.",
                        style: GoogleFonts.montserrat(
                          fontSize: height * 0.025,
                          fontWeight: FontWeight.w400,
                          color: themeProvider.lightTheme ? Colors.black : Colors.white,
                        ),
                      ),
                      SizedBox(
                        height: height * 0.02,
                      ),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Row(
                          children: [
                            ElevatedButton.icon(
                              onPressed: () {
                                kIsWeb
                                    ? window.open(
                                        'https://drive.google.com/file/d/1FaHIzT9FigDHLx8NlxFIyQfjJTyN9WQ6/view?usp=sharing',
                                        "pdf")
                                    : launchURL(
                                        'https://drive.google.com/file/d/1FaHIzT9FigDHLx8NlxFIyQfjJTyN9WQ6/view?usp=sharing');
                              },
                              icon: Icon(
                                IonIcons.document,
                                size: MediaQuery.of(context).size.height * 0.018,
                              ),
                              label: Text(
                                "Download Resume",
                                style: GoogleFonts.montserrat(
                                    fontSize: MediaQuery.of(context).size.height * 0.013,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w400),
                              ),
                              style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
                                padding: EdgeInsets.only(
                                  top: MediaQuery.of(context).size.height * 0.018,
                                  left: MediaQuery.of(context).size.height * 0.011,
                                  right: MediaQuery.of(context).size.height * 0.013,
                                  bottom: MediaQuery.of(context).size.height * 0.018,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: height * 0.025,
                ),
                Expanded(
                  child: StaggeredGrid.count(
                    crossAxisCount: 4,
                    mainAxisSpacing: 5,
                    crossAxisSpacing: 5,
                    children: [
                      StaggeredGridTile.count(
                        crossAxisCellCount: 2,
                        mainAxisCellCount: 2,
                        child: PhotoCard(index: 0),
                      ),
                      StaggeredGridTile.count(
                        crossAxisCellCount: 2,
                        mainAxisCellCount: 1,
                        child: PhotoCard(index: 1),
                      ),
                      StaggeredGridTile.count(
                        crossAxisCellCount: 1,
                        mainAxisCellCount: 1,
                        child: PhotoCard(index: 2),
                      ),
                      StaggeredGridTile.count(
                        crossAxisCellCount: 1,
                        mainAxisCellCount: 2,
                        child: PhotoCard(index: 3),
                      ),
                      StaggeredGridTile.count(
                        crossAxisCellCount: 3,
                        mainAxisCellCount: 2,
                        child: PhotoCard(index: 4),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

          // Container(
          //   width: width < 1230 ? width * 0.05 : width * 0.1,
          // ),
        ],
      ),
    );
  }
}
