import 'package:Dashify/ui/controllers/MenuController.dart';
import 'package:Dashify/ui/pages/dashboard/dashboard_screen.dart';
import 'package:Dashify/ui/pages/main/components/side_menu.dart';
import 'package:Dashify/ui/responsive.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  Widget _screen = DashboardScreen();

  @override
  Widget build(BuildContext context) {
    final GlobalKey<SideMenuState> _key = GlobalKey();

    void refreshChild(Widget _requestedScreen) {
      setState(() {
        _screen = _requestedScreen;
      });
    }

    return Scaffold(
      key: context.read<MenuController>().scaffoldKey,
      drawer: SideMenu(
        updateScreen: refreshChild,
      ),
      body: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // We want this side menu only for large screen
            if (Responsive.isDesktop(context))
              Expanded(
                // default flex = 1
                // and it takes 1/6 part of the screen
                child: SideMenu(
                  updateScreen: refreshChild,
                ),
              ),
            Expanded(
              // It takes 5/6 part of the screen
              flex: 5,
              child: _screen,
            ),
          ],
        ),
      ),
    );
  }
}
