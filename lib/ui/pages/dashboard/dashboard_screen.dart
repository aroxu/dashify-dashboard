import 'package:Dashify/constants.dart';
import 'package:Dashify/ui/pages/dashboard/components/header.dart';
import 'package:Dashify/ui/pages/dashboard/components/system_info_status.dart';
import 'package:Dashify/ui/pages/players/components/player_list.dart';
import 'package:Dashify/ui/pages/dashboard/components/player_environment_summary.dart';
import 'package:Dashify/ui/responsive.dart';
import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        padding: EdgeInsets.all(defaultPadding),
        child: Column(
          children: [
            Header(),
            SizedBox(height: defaultPadding),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 5,
                  child: Column(
                    children: [
                      SystemStatusInfo(),
                      SizedBox(height: defaultPadding),
                      PlayerList(limit: 10),
                      if (Responsive.isMobile(context))
                        SizedBox(height: defaultPadding),
                      if (Responsive.isMobile(context))
                        PlayerEnvironmentSummary(),
                    ],
                  ),
                ),
                if (!Responsive.isMobile(context))
                  SizedBox(width: defaultPadding),
                // On Mobile means if the screen is less than 850 we dont want to show it
                if (!Responsive.isMobile(context))
                  Expanded(
                    flex: 2,
                    child: PlayerEnvironmentSummary(),
                  ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
