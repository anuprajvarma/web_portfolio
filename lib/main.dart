import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:resumeflutter/AppProvider/AppProvider.dart';
import 'package:resumeflutter/ui/HomePage.dart';
import 'package:resumeflutter/values/values.dart';
import 'package:url_strategy/url_strategy.dart';

void main() {
  setPathUrlStrategy();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => AppProvider(),
      child: MaterialApp(
        title: name,
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          textTheme: GoogleFonts.openSansTextTheme(
            Theme.of(context).textTheme,
          ),
          textSelectionTheme: TextSelectionThemeData(
            selectionColor: selectionColor,
            selectionHandleColor: selectionColor,
          ),
        ),
        home: HomePage(),
      ),
    );
  }
}
