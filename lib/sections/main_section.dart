import 'package:flutter/rendering.dart';
import '../../animations/entrance_fader.dart';
import '../../provider/theme_provider.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';
import '../../constants.dart';
import '../../sections/about/about.dart';
import '../../sections/contact/contact.dart';
import '../../sections/home/home.dart';
import '../../sections/navbar/navbar_logo.dart';
import 'projects/projects.dart';
import '../../sections/services/services.dart';
import '../../widget/arrow_on_top.dart';
import 'package:google_fonts/google_fonts.dart';

import 'experience/experience.dart';
import 'tech_stack/tech_stack.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  MainPageState createState() => MainPageState();
}

class MainPageState extends State<MainPage> {
  final ThemeProvider _themeProviders = ThemeProvider();
  bool isPressed = false;
  bool _isScrollingDown = false;
  ScrollController _scrollController = ScrollController();

  final List<String> _sectionsName = ["HOME", "ABOUT", "TECH STACK", "PROJECTS", "EXPERIENCE"];

  final List<IconData> _sectionsIcons = [
    Icons.home,
    Icons.person,
    Icons.settings,
    Icons.build,
    Icons.article,
    Icons.phone,
  ];

  void _scroll(int i) {
    _scrollController.animateTo(
      i == 0
          ? 0.0
          : i == 1
              ? MediaQuery.of(context).size.height * 1.05
              : i == 2
                  ? MediaQuery.of(context).size.height * 1.98
                  : i == 3
                      ? MediaQuery.of(context).size.height * 2.9
                      : MediaQuery.of(context).size.height * 4,
      duration: const Duration(seconds: 1),
      curve: Curves.easeInOut,
    );
  }

  Widget sectionWidget(int i) {
    if (i == 0) {
      return const HomePage();
      // } else if (i == 0) {
      //   return const About();
      // } else if (i == 2) {
      //   return const TechStack();
      // } else if (i == 3) {
      //   return const Portfolio();
      // } else if (i == 4) {
      //   return const Experience();
      // } else if (i == 5) {
      //   return const Contact();
    } else {
      return Container();
    }
  }

  @override
  void initState() {
    _scrollController = _themeProviders.controller;
    _scrollController.addListener(() {
      if (_scrollController.position.userScrollDirection == ScrollDirection.reverse) {
        if (!_isScrollingDown) {
          _isScrollingDown = true;
          setState(() {});
        }
      }

      if (_scrollController.position.userScrollDirection == ScrollDirection.forward) {
        if (_isScrollingDown) {
          _isScrollingDown = false;
          setState(() {});
        }
      }
    });
    super.initState();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    _scrollController.removeListener(() {});
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final themeProv = Provider.of<ThemeProvider>(context);
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: themeProv.lightTheme ? Colors.white : Colors.black,
      appBar: MediaQuery.of(context).size.width < 760
          ? AppBar(
              iconTheme: IconThemeData(color: themeProv.lightTheme ? Colors.black : Colors.white),
              elevation: 0,
              backgroundColor: Colors.transparent,
              actions: [
                const NavBarLogo(),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.05,
                )
              ],
            )
          : _appBarTabDesktop(themeProv),
      drawer: MediaQuery.of(context).size.width < 760 ? _appBarMobile(themeProv) : null,
      body: Stack(
        children: [
          SectionsBody(
            scrollController: _scrollController,
            sectionsLength: _sectionsIcons.length,
            sectionWidget: sectionWidget,
          ),
          _isScrollingDown
              ? Positioned(
                  bottom: 90,
                  right: 8,
                  child: EntranceFader(
                      offset: const Offset(0, 20),
                      child: ArrowOnTop(
                        onPressed: () => _scroll(0),
                      )))
              : Container()
        ],
      ),
    );
  }

  Widget _appBarActions(String childText, int index, IconData icon, ThemeProvider themeProvider) {
    return MediaQuery.of(context).size.width > 760
        ? EntranceFader(
            offset: const Offset(0, -10),
            delay: const Duration(milliseconds: 100),
            duration: const Duration(milliseconds: 250),
            child: Container(
              padding: const EdgeInsets.all(8.0),
              height: 60.0,
              child: MaterialButton(
                hoverColor: kPrimaryColor,
                onPressed: () => _scroll(index),
                child: Text(
                  childText,
                  style: TextStyle(
                    color: themeProvider.lightTheme ? Colors.black : Colors.white,
                  ),
                ),
              ),
            ),
          )
        : Padding(
            padding: const EdgeInsets.all(8.0),
            child: MaterialButton(
              hoverColor: kPrimaryColor.withAlpha(70),
              onPressed: () {
                _scroll(index);
                Navigator.pop(context);
              },
              child: ListTile(
                leading: Icon(
                  icon,
                  color: kPrimaryColor,
                ),
                title: Text(childText,
                    style: TextStyle(
                      color: themeProvider.lightTheme ? Colors.black : Colors.white,
                    )),
              ),
            ),
          );
  }

  AppBar _appBarTabDesktop(ThemeProvider themeProv) {
    return AppBar(
      elevation: 0.0,
      backgroundColor: themeProv.lightTheme ? Colors.white : Colors.black,
      title: MediaQuery.of(context).size.width < 780
          ? const EntranceFader(
              duration: Duration(milliseconds: 250),
              offset: Offset(0, -10),
              delay: Duration(seconds: 3),
              child: NavBarLogo(
                height: 20.0,
              ))
          : EntranceFader(
              offset: const Offset(0, -10),
              duration: const Duration(milliseconds: 250),
              delay: const Duration(milliseconds: 100),
              child: NavBarLogo(
                height: MediaQuery.of(context).size.height * 0.035,
              ),
            ),
      actions: [
        for (int i = 0; i < _sectionsName.length; i++)
          _appBarActions(_sectionsName[i], i, _sectionsIcons[i], themeProv),
        // EntranceFader(
        //   offset: const Offset(0, -10),
        //   delay: const Duration(milliseconds: 100),
        //   duration: const Duration(milliseconds: 250),
        //   child: Container(
        //     height: 60.0,
        //     width: 120.0,
        //     padding: const EdgeInsets.all(8.0),
        //     child: MaterialButton(
        //       hoverColor: kPrimaryColor.withAlpha(150),
        //       shape: RoundedRectangleBorder(
        //           borderRadius: BorderRadius.circular(5.0), side: const BorderSide(color: kPrimaryColor)),
        //       onPressed: () {
        //         html.window
        //             .open('https://drive.google.com/file/d/1FaHIzT9FigDHLx8NlxFIyQfjJTyN9WQ6/view?usp=sharing', "pdf");
        //       },
        //       child: Text(
        //         "RESUME",
        //         style: GoogleFonts.montserrat(
        //           color: themeProv.lightTheme ? Colors.black : Colors.white,
        //           fontWeight: FontWeight.w300,
        //         ),
        //       ),
        //     ),
        //   ),
        // ),
        const SizedBox(width: 15.0),
        SizedBox(
          height: 30.0,
          child: Switch(
            inactiveTrackColor: Colors.grey,
            value: !themeProv.lightTheme,
            onChanged: (value) {
              themeProv.lightTheme = !value;
            },
            activeColor: kPrimaryColor,
          ),
        ),
        const SizedBox(width: 15.0),
      ],
    );
  }

  Widget _appBarMobile(ThemeProvider theme) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    return Drawer(
      child: Material(
        color: theme.lightTheme ? Colors.white : Colors.grey[900],
        child: Padding(
          padding: const EdgeInsets.fromLTRB(0, 25.0, 0, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 8.0, right: 16.0, left: 16.0, bottom: 8.0),
                child: ListTile(
                  leading: Container(
                    height: 45,
                    width: 45,
                    margin: const EdgeInsets.only(right: 13.0),
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
                  title: Text(
                    "Motey",
                    style: TextStyle(
                      // fontFamily: "Agustina",
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                      color: themeProvider.lightTheme ? Colors.black : Colors.white,
                    ),
                  ),
                ),
              ),
              Divider(
                color: theme.lightTheme ? Colors.grey[200] : Colors.white,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 16.0, left: 16.0),
                child: ListTile(
                  leading: const Icon(
                    Icons.light_mode,
                    color: kPrimaryColor,
                  ),
                  title: Text("Dark Mode", style: TextStyle(color: theme.lightTheme ? Colors.black : Colors.white)),
                  trailing: Switch(
                    inactiveTrackColor: Colors.grey,
                    value: !theme.lightTheme,
                    onChanged: (value) {
                      theme.lightTheme = !value;
                    },
                    activeColor: kPrimaryColor,
                  ),
                ),
              ),
              Divider(
                color: theme.lightTheme ? Colors.grey[200] : Colors.white,
              ),
              for (int i = 0; i < _sectionsName.length; i++)
                _appBarActions(_sectionsName[i], i, _sectionsIcons[i], theme),
              // Padding(
              //   padding: const EdgeInsets.all(8.0),
              //   child: MaterialButton(
              //     hoverColor: kPrimaryColor.withAlpha(150),
              //     shape: RoundedRectangleBorder(
              //         borderRadius: BorderRadius.circular(5.0), side: const BorderSide(color: kPrimaryColor)),
              //     onPressed: () {
              //       launchURL("https://drive.google.com/file/d/1FaHIzT9FigDHLx8NlxFIyQfjJTyN9WQ6/view?usp=sharing");
              //     },
              //     child: ListTile(
              //       leading: const Icon(
              //         Icons.book,
              //         color: Colors.red,
              //       ),
              //       title: Text(
              //         "RESUME",
              //         style: GoogleFonts.montserrat(
              //           fontWeight: FontWeight.w300,
              //           color: theme.lightTheme ? Colors.black : Colors.white,
              //         ),
              //       ),
              //     ),
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}

class SectionsBody extends StatelessWidget {
  final ScrollController scrollController;
  final int sectionsLength;
  final Widget Function(int) sectionWidget;

  const SectionsBody({
    Key? key,
    required this.scrollController,
    required this.sectionsLength,
    required this.sectionWidget,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: ListView.builder(
        // physics: !kIsWeb ? ScrollPhysics() : NeverScrollableScrollPhysics(),
        controller: scrollController,
        itemCount: sectionsLength,
        itemBuilder: (context, index) => sectionWidget(index),
      ),
    );
  }
}

// onPointerSignal: (ps) {
//           if (ps is PointerScrollEvent) {
//             final newOffset = scrollController.offset + ps.scrollDelta.dy;
//             if (ps.scrollDelta.dy.isNegative) {
//               scrollController.jumpTo(math.max(0, newOffset));
//             } else {
//               scrollController.jumpTo(math.min(
//                   scrollController.position.maxScrollExtent, newOffset));
//             }
//           }
//         },
