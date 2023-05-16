import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../constants.dart';
import '../../provider/theme_provider.dart';
import 'package:provider/provider.dart';

import 'adaptive_text.dart';

class ProjectLinkButton extends StatefulWidget {
  final String title;
  final IconData iconData;
  final VoidCallback onPressed;

  const ProjectLinkButton({
    Key? key,
    required this.title,
    required this.iconData,
    required this.onPressed,
  }) : super(key: key);

  @override
  ProjectLinkButtonState createState() => ProjectLinkButtonState();
}

class ProjectLinkButtonState extends State<ProjectLinkButton> {
  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    return Row(
      children: [
        InkWell(
          onTap: widget.onPressed,
          onHover: (isHovering) {
            if (isHovering) {
              setState(() {
                isHover = true;
              });
            } else {
              setState(() {
                isHover = false;
              });
            }
          },
          child: Container(
            height: MediaQuery.of(context).size.width < 1200
                ? MediaQuery.of(context).size.height * 0.03
                : MediaQuery.of(context).size.height * 0.03,
            alignment: Alignment.center,
            padding: EdgeInsets.only(
              top: MediaQuery.of(context).size.height * 0.008,
              left: MediaQuery.of(context).size.height * 0.01,
              right: MediaQuery.of(context).size.height * 0.01,
              bottom: MediaQuery.of(context).size.height * 0.008,
            ),
            decoration: BoxDecoration(
              color: themeProvider.lightTheme ? Colors.black : Colors.black,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(6.0),
                topRight: Radius.circular(6.0),
                bottomLeft: Radius.circular(6.0),
                bottomRight: Radius.circular(6.0),
              ),
              boxShadow: isHover
                  ? [
                      BoxShadow(
                        color: themeProvider.lightTheme ? Colors.black12 : kPrimaryColor.withAlpha(200),
                        blurRadius: 12.0,
                        offset: const Offset(2.0, 3.0),
                      )
                    ]
                  : [],
            ),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    widget.iconData,
                    color: kPrimaryColor,
                    size: MediaQuery.of(context).size.height * 0.014,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.height * 0.01,
                  ),
                  AdaptiveText(
                    widget.title,
                    style: GoogleFonts.montserrat(
                      fontSize: MediaQuery.of(context).size.height * 0.013,
                      color: kPrimaryColor,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ]),
          ),
        ),
      ],
    );
  }
}
