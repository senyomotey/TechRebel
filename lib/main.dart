import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import 'provider/theme_provider.dart';
import 'provider/theme_styles.dart';
import 'sections/main_section.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  MyAppState createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  final ThemeProvider _themeProvider = ThemeProvider();

  void getCurrentAppTheme() async {
    _themeProvider.lightTheme = await _themeProvider.darkThemePref.getTheme();
  }

  @override
  void initState() {
    getCurrentAppTheme();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => ThemeProvider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Tech Rebel',
        theme: ThemeStyles.themeData(
          _themeProvider.lightTheme,
          context,
        ),
        initialRoute: "/",
        routes: {
          "/": (context) => const MainPage(),
        },
      ),
    );
  }
}
