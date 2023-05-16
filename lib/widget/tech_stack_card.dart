import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../constants.dart';
import '../../provider/theme_provider.dart';
import 'package:provider/provider.dart';

import 'adaptive_text.dart';

class TechStackCard extends StatefulWidget {
  final String title;
  final IconData iconData;
  final Widget? icon;
  final VoidCallback onPressed;

  const TechStackCard({
    Key? key,
    required this.title,
    required this.iconData,
    required this.onPressed,
    this.icon,
  }) : super(key: key);

  @override
  TechStackCardState createState() => TechStackCardState();
}

class TechStackCardState extends State<TechStackCard> {
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
            alignment: Alignment.center,
            padding: EdgeInsets.only(
              top: MediaQuery.of(context).size.height * 0.008,
              left: MediaQuery.of(context).size.height * 0.01,
              right: MediaQuery.of(context).size.height * 0.02,
              bottom: MediaQuery.of(context).size.height * 0.008,
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
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  widget.icon == null
                      ? Icon(
                          widget.iconData,
                          color: kPrimaryColor,
                          size: MediaQuery.of(context).size.height * 0.026,
                        )
                      : widget.icon!,
                  SizedBox(
                    width: MediaQuery.of(context).size.height * 0.01,
                  ),
                  AdaptiveText(
                    widget.title,
                    style: GoogleFonts.montserrat(
                      fontSize: MediaQuery.of(context).size.height * 0.015,
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
