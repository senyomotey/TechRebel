import 'package:flutter/material.dart';
import '../../provider/theme_provider.dart';
import 'package:provider/provider.dart';

class NavBarLogo extends StatelessWidget {
  final double? height;
  const NavBarLogo({Key? key, this.height}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    return Container(
      // padding: EdgeInsets.fromLTRB(
      //     MediaQuery.of(context).size.width < 1100 ? 0.0 : 20.0, 20.0, 0, 0),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          // Text(
          //   "< ",
          //   style: TextStyle(
          //     fontSize: height ?? 20,
          //     color: themeProvider.lightTheme ? Colors.black : Colors.white,
          //   ),
          // ),
          Container(
            height: 45,
            width: 45,
            margin: EdgeInsets.only(right: 13.0),
            alignment: Alignment.topCenter,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: Image.asset(
                  'assets/im_profile.png',
                  gaplessPlayback: true,
                ).image,
                fit: BoxFit.cover,
                onError: (error, stacktrace) {
                  // setState() {
                  //   imgVariable = AssetImage('assets/could_not_load_img.jpg');
                  // }
                },
              ),
            ),
          ),
          Text(
            "Motey",
            style: TextStyle(
              // fontFamily: "Agustina",
              fontSize: height ?? 20,
              fontWeight: FontWeight.w400,
              color: themeProvider.lightTheme ? Colors.black : Colors.white,
            ),
          ),
          // Text(
          //   MediaQuery.of(context).size.width >= 1000 ? " />\t\t" : " />",
          //   style: TextStyle(
          //     fontSize: height ?? 20,
          //     color: themeProvider.lightTheme ? Colors.black : Colors.white,
          //   ),
          // )
        ],
      ),
    );
  }
}
