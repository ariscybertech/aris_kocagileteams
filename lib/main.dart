import 'package:flutter/material.dart';
import 'package:kocagileteam/ui/view/team_view.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "/": (context) => TeamView(),
      },
    );
  }
}
