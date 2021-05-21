import 'package:flutter/material.dart';

import 'package:Dashify/constants.dart';
import 'player_environment_summary_pie_chart.dart';
import 'player_environment_card.dart';

class PlayerEnvironmentSummary extends StatelessWidget {
  const PlayerEnvironmentSummary({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(defaultPadding),
      decoration: BoxDecoration(
        color: secondaryColor,
        borderRadius: const BorderRadius.all(Radius.circular(10)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Environment Summary",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(height: defaultPadding),
          PlayerEnvironmentSummaryPieChart(),
          PlayerEnvironmentCard(
            svgSrc: "assets/icons/overworld.svg",
            title: "Normal",
            percent: 57,
            description: "57P.",
          ),
          PlayerEnvironmentCard(
            svgSrc: "assets/icons/nether.svg",
            title: "Nether",
            percent: 25,
            description: "25P.",
          ),
          PlayerEnvironmentCard(
            svgSrc: "assets/icons/the_end.svg",
            title: "The End",
            percent: 12,
            description: "12P.",
          ),
          SizedBox(height: defaultPadding),
          Container(
            padding: EdgeInsets.symmetric(
                vertical: defaultPadding / 2, horizontal: defaultPadding),
            child: Text("Note: P. means Player(s)"),
          ),
        ],
      ),
    );
  }
}
