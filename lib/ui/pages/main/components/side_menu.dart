import 'package:Dashify/ui/pages/dashboard/dashboard_screen.dart';
import 'package:Dashify/ui/pages/players/players_screen.dart';
import 'package:Dashify/ui/responsive.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SideMenu extends StatefulWidget {
  final Function updateScreen;

  const SideMenu({
    Key key,
    this.updateScreen,
  }) : super(key: key);

  @override
  SideMenuState createState() => SideMenuState();
}

class SideMenuState extends State<SideMenu> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Dashify",
                  style: Theme.of(context).textTheme.headline6,
                ),
              ],
            ),
          ),
          DrawerListTile(
            title: "Dashbord",
            svgSrc: "assets/icons/dashboard.svg",
            press: () {
              widget.updateScreen(DashboardScreen());
              if (!Responsive.isDesktop(context)) {
                Navigator.pop(context);
              }
            },
          ),
          DrawerListTile(
            title: "Players",
            svgSrc: "assets/icons/person.svg",
            press: () {
              widget.updateScreen(PlayersScreen());
              if (!Responsive.isDesktop(context)) {
                Navigator.pop(context);
              }
            },
          ),
          DrawerListTile(
            title: "Worlds",
            svgSrc: "assets/icons/world.svg",
            press: () {
              if (!Responsive.isDesktop(context)) {
                Navigator.pop(context);
              }
            },
          ),
          DrawerListTile(
            title: "TPS",
            svgSrc: "assets/icons/tps.svg",
            press: () {
              if (!Responsive.isDesktop(context)) {
                Navigator.pop(context);
              }
            },
          ),
          DrawerListTile(
            title: "CPU",
            svgSrc: "assets/icons/cpu.svg",
            press: () {
              if (!Responsive.isDesktop(context)) {
                Navigator.pop(context);
              }
            },
          ),
          DrawerListTile(
            title: "Memory",
            svgSrc: "assets/icons/ram.svg",
            press: () {
              if (!Responsive.isDesktop(context)) {
                Navigator.pop(context);
              }
            },
          ),
          DrawerListTile(
            title: "Other",
            svgSrc: "assets/icons/other.svg",
            press: () {
              if (!Responsive.isDesktop(context)) {
                Navigator.pop(context);
              }
            },
          ),
        ],
      ),
    );
  }
}

class DrawerListTile extends StatelessWidget {
  const DrawerListTile({
    Key key,
    // For selecting those three line once press "Command+D"
    @required this.title,
    @required this.svgSrc,
    @required this.press,
  }) : super(key: key);

  final String title, svgSrc;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: press,
      horizontalTitleGap: 0.0,
      leading: SvgPicture.asset(
        svgSrc,
        color: Colors.white54,
        height: 16,
      ),
      title: Text(
        title,
        style: TextStyle(color: Colors.white54),
      ),
    );
  }
}
