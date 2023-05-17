import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:universal_html/html.dart' as html;
import '../../constants.dart';
import '../../provider/theme_provider.dart';
import '../../widget/adaptive_text.dart';
import '../../widget/custom_text_heading.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../../widget/photo_card.dart';

class AboutTab extends StatelessWidget {
  AboutTab({Key? key}) : super(key: key);

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
          SizedBox(height: height * 0.03),
          Container(
            padding: EdgeInsets.only(
              left: height * 0.04,
              right: height * 0.04,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AdaptiveText(
                      "I'm Senyo Motey, a Flutter Developer, Laravel Developer and UI designer.",
                      style: GoogleFonts.montserrat(
                        fontSize: height * 0.022,
                        fontWeight: FontWeight.w400,
                        color: themeProvider.lightTheme ? Colors.black : Colors.white,
                      ),
                    ),
                    SizedBox(
                      height: height * 0.02,
                    ),
                    Align(
                      alignment: Alignment.topCenter,
                      child: ElevatedButton.icon(
                        onPressed: () {
                          kIsWeb
                              ? html.window.open(
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
                              fontSize: MediaQuery.of(context).size.height * 0.016,
                              color: Colors.white,
                              fontWeight: FontWeight.w500),
                        ),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.red[900],
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
                          padding: EdgeInsets.only(
                            top: MediaQuery.of(context).size.height * 0.015,
                            left: MediaQuery.of(context).size.height * 0.011,
                            right: MediaQuery.of(context).size.height * 0.013,
                            bottom: MediaQuery.of(context).size.height * 0.015,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: height * 0.03,
                ),
                Container(
                  padding: EdgeInsets.only(
                    left: height * 0.08,
                    right: height * 0.08,
                  ),
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
          Container(
            height: height < 1230 ? height * 0.07 : height * 0.3,
          ),
        ],
      ),
    );
  }
}
