import 'package:Dashify/constants.dart';
import 'package:Dashify/global.dart';
import 'package:Dashify/ui/controllers/MenuController.dart';
import 'package:Dashify/ui/pages/main/main_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    Dashify(),
  );
}

class Dashify extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _DashifyState createState() => _DashifyState();
}

class _DashifyState extends State<Dashify> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Dashify',
      theme: ThemeData.dark().copyWith(
        textTheme: ThemeData.dark().textTheme.apply(
              fontFamily: 'TmoneyRoundWind',
            ),
        primaryTextTheme: ThemeData.dark().textTheme.apply(
              fontFamily: 'TmoneyRoundWind',
            ),
        accentTextTheme: ThemeData.dark().textTheme.apply(
              fontFamily: 'TmoneyRoundWind',
            ),
        scaffoldBackgroundColor: bgColor,
        canvasColor: secondaryColor,
      ),
      home: MultiProvider(
        providers: [
          ChangeNotifierProvider(
            create: (context) => MenuController(),
          ),
        ],
        child: MainScreen(),
      ),
    );
  }
}
