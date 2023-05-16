import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../constants.dart';
import '../../provider/theme_provider.dart';
import 'package:provider/provider.dart';

import 'adaptive_text.dart';

class ContactCard extends StatefulWidget {
  final String title;
  final IconData iconData;
  final double height;
  final double fontSize;
  final double iconSize;
  final VoidCallback onPressed;

  const ContactCard({
    Key? key,
    required this.title,
    required this.iconData,
    required this.height,
    required this.fontSize,
    required this.iconSize,
    required this.onPressed,
  }) : super(key: key);

  @override
  ContactCardState createState() => ContactCardState();
}

class ContactCardState extends State<ContactCard> {
  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
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
            width: 340.0,
            alignment: Alignment.center,
            padding: EdgeInsets.only(
              top: MediaQuery.of(context).size.height * 0.02,
              left: MediaQuery.of(context).size.height * 0.03,
              right: MediaQuery.of(context).size.height * 0.05,
              bottom: MediaQuery.of(context).size.height * 0.02,
            ),
            decoration: BoxDecoration(
              color: themeProvider.lightTheme ? Colors.grey[200] : Colors.grey[900],
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(8.0),
                topRight: Radius.circular(8.0),
                bottomLeft: Radius.circular(8.0),
                bottomRight: Radius.circular(8.0),
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
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    widget.iconData,
                    color: kPrimaryColor,
                    size: widget.iconSize,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.height * 0.02,
                  ),
                  AdaptiveText(
                    widget.title,
                    style: GoogleFonts.montserrat(
                      fontSize: widget.fontSize,
                      color: Colors.grey[100],
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
