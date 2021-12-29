import 'package:flutter/material.dart';
import 'package:kocagileteam/ui/shared/agile_card.dart';

class TeamView extends StatefulWidget {
  @override
  _TeamViewState createState() => _TeamViewState();
}

class _TeamViewState extends State<TeamView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        children: [
          AgileCardWidget(
            title: "StarForce1",
            description: "asd",
            color: Colors.blue,
            imageAsset: "",
          ),
          AgileCardWidget(
            title: "StarForce2",
            description: "asd",
            color: Colors.blue,
            imageAsset: "",
          ),
        ],
      ),
    );
  }
}
