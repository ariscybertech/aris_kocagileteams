import 'package:flutter/material.dart';

class AgileCardWidget extends StatefulWidget {
  final String title;
  final String description;
  final Color color;
  final String imageAsset;

  AgileCardWidget({
    @required this.title,
    @required this.description,
    @required this.color,
    @required this.imageAsset,
  });

  @override
  _AgileCardWidgetState createState() => _AgileCardWidgetState();
}

class _AgileCardWidgetState extends State<AgileCardWidget>
    with SingleTickerProviderStateMixin {
  AnimationController controller;
  Animation<double> animation;

  @override
  void initState() {
    controller =
        AnimationController(vsync: this, duration: Duration(seconds: 2));
    animation = CurvedAnimation(parent: controller, curve: Curves.easeIn);
    controller.forward();
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: widget.color,
      child: FadeTransition(
        opacity: animation,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Placeholder(fallbackHeight: 100),
            Text(widget.title),
            Text(widget.description),
          ],
        ),
      ),
    );
  }
}
