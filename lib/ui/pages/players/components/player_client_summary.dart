import 'package:flutter/material.dart';

import 'package:Dashify/constants.dart';
import 'player_client_summary_pie_chart.dart';
import 'player_client_card.dart';

class PlayerClientSummary extends StatelessWidget {
  const PlayerClientSummary({
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
            "Client Summary",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(height: defaultPadding),
          PlayerClientSummaryPieChart(),
          PlayerClientCard(
            title: "Vanilla",
            percent: 57,
            description: "57P.",
          ),
          PlayerClientCard(
            title: "lunarclient-b39f91",
            percent: 25,
            description: "25P.",
          ),
          PlayerClientCard(
            title: "badlionclient-b39f91",
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
