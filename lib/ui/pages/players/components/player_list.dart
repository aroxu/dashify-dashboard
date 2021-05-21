import 'package:Dashify/models/ConnectedPlayers.dart';
import 'package:Dashify/constants.dart';
import 'package:flutter/material.dart';

class PlayerList extends StatelessWidget {
  final int limit;
  const PlayerList({Key key, this.limit}) : super(key: key);

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
            (() {
              if (connectedPlayers.length == 0) {
                return "Player List: No Connected Players";
              } else if (limit == 0 || limit == null) {
                return "Player List";
              } else {
                return "Player List: Showing max $limit player(s)";
              }
            }()),
            style: Theme.of(context).textTheme.subtitle1,
          ),
          SizedBox(
            width: double.infinity,
            child: DataTable(
              showCheckboxColumn: false,
              horizontalMargin: 0,
              columnSpacing: defaultPadding,
              columns: [
                DataColumn(
                  label: Text("Player Name"),
                ),
                DataColumn(
                  label: Text("Ping"),
                ),
                DataColumn(
                  label: Text("Client Name"),
                ),
              ],
              rows: (() {
                if (limit == 0 || limit == null) {
                  return List.generate(
                    connectedPlayers.length,
                    (index) => connectedPlayersDataRow(connectedPlayers[index]),
                  );
                }
                return List.generate(
                  connectedPlayers.length,
                  (index) => connectedPlayersDataRow(connectedPlayers[index]),
                ).sublist(0, limit);
              }()),
            ),
          ),
        ],
      ),
    );
  }
}

DataRow connectedPlayersDataRow(ConnectedPlayers playerInfo) {
  return DataRow(
      cells: [
        DataCell(
          Row(
            children: [
              Image.network(
                playerInfo.playerHead,
                height: 30,
                width: 30,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
                child: Text(playerInfo.playerName),
              ),
            ],
          ),
        ),
        DataCell(Text(playerInfo.ping)),
        DataCell(Text(playerInfo.clientName)),
      ],
      onSelectChanged: (bool selected) {
        if (selected) {
          print('row-selected: ${playerInfo.playerName}');
        }
      });
}
