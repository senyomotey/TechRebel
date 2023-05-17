import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../provider/theme_provider.dart';
import 'package:provider/provider.dart';

class NavBarLogo extends StatelessWidget {
  final double? height;
  const NavBarLogo({Key? key, this.height}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    return Container(
      padding: EdgeInsets.fromLTRB(MediaQuery.of(context).size.width < 1100 ? 0.0 : 20.0, 10.0, 0, 0),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          // Container(
          //   height: 45,
          //   width: 45,
          //   margin: EdgeInsets.only(right: 13.0),
          //   alignment: Alignment.topCenter,
          //   decoration: BoxDecoration(
          //     shape: BoxShape.circle,
          //     image: DecorationImage(
          //       image: Image.asset(
          //         'assets/im_profile.png',
          //         gaplessPlayback: true,
          //       ).image,
          //       fit: BoxFit.cover,
          //       onError: (error, stacktrace) {
          //         // setState() {
          //         //   imgVariable = AssetImage('assets/could_not_load_img.jpg');
          //         // }
          //       },
          //     ),
          //   ),
          // ),
          // Text(
          //   "< ",
          //   style: TextStyle(
          //     fontSize: 25,
          //     color: themeProvider.lightTheme ? Colors.black : Colors.white,
          //   ),
          // ),
          Text(
            "Tech Rebel",
            style: GoogleFonts.indieFlower(
              // fontFamily: "Agustina",
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: themeProvider.lightTheme ? Colors.black : Colors.white,
            ),
          ),
          // Text(
          //   MediaQuery.of(context).size.width >= 1000 ? " />\t\t" : " />",
          //   style: TextStyle(
          //     fontSize: 25,
          //     color: themeProvider.lightTheme ? Colors.black : Colors.white,
          //   ),
          // )
        ],
      ),
    );
  }
}
