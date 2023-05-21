import 'package:flutter/foundation.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:techrebel.dev/widget/photo_card.dart';
import 'package:universal_html/html.dart' as html;
import '../../constants.dart';
import '../../provider/theme_provider.dart';
import '../../widget/custom_text_heading.dart';
import 'package:provider/provider.dart';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutMobile extends StatelessWidget {
  AboutMobile({Key? key}) : super(key: key);

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
        mainAxisSize: MainAxisSize.min,
        children: [
          const CustomSectionHeading(text: "\nAbout Me"),
          const CustomSectionSubHeading(text: "Get to know me :)"),
          SizedBox(
            height: height * 0.03,
          ),
          Text(
            "I'm Senyo Motey, a forward-thinking software engineer, with five years of experience in building, integrating, testing and maintaining applications for mobile devices and the web.\n\nI am also known for writing efficient, maintainable, and reusable code, proficient in design, data structures, problem-solving, debugging and familiar with Supervisory Control and Data Acquisition (SCADA)",
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
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.all(8.0),
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
                      size: MediaQuery.of(context).size.height * 0.026,
                    ),
                    label: Text(
                      "Download Resume",
                      style: GoogleFonts.montserrat(
                          fontSize: MediaQuery.of(context).size.height * 0.018,
                          color: Colors.white,
                          fontWeight: FontWeight.w500),
                    ),
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
                      padding: EdgeInsets.only(
                        top: MediaQuery.of(context).size.width * 0.035,
                        left: MediaQuery.of(context).size.width * 0.02,
                        right: MediaQuery.of(context).size.width * 0.03,
                        bottom: MediaQuery.of(context).size.width * 0.035,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: height * 0.025,
          ),
          StaggeredGrid.count(
            crossAxisCount: 4,
            mainAxisSpacing: 5,
            crossAxisSpacing: 5,
            children: [
              StaggeredGridTile.count(
                crossAxisCellCount: 2,
                mainAxisCellCount: 2,
                child: PhotoCard(name: 'assets/agrocenta_1.jpg'),
              ),
              StaggeredGridTile.count(
                crossAxisCellCount: 2,
                mainAxisCellCount: 1,
                child: PhotoCard(name: 'assets/gdiw.jpg'),
              ),
              StaggeredGridTile.count(
                crossAxisCellCount: 1,
                mainAxisCellCount: 1,
                child: PhotoCard(name: 'assets/agrocenta_2.jpg'),
              ),
              StaggeredGridTile.count(
                crossAxisCellCount: 1,
                mainAxisCellCount: 2,
                child: PhotoCard(name: 'assets/gdiw.jpg'),
              ),
              StaggeredGridTile.count(
                crossAxisCellCount: 3,
                mainAxisCellCount: 2,
                child: PhotoCard(name: 'assets/gdiw.jpg'),
              ),
            ],
          ),
          SizedBox(
            height: height * 0.1,
          ),
        ],
      ),
    );
  }
}
