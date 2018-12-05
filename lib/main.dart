import 'package:flutter/material.dart';
import "package:flare/flare_actor.dart";
import 'dart:math' as math;

void main() => runApp(MaterialApp(home: FlareApp()));

class FlareApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color:  Color(0xFFff9234),
      child: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Transform(
            transform: Matrix4.identity()
              ..translate(-50.0, 0.0, 0.0),
            child: FlareActor(
              "assets/Filip.flr",
              alignment: Alignment.center,
              fit: BoxFit.contain,
              animation: "move_phone",
            ),
          ),
          Transform(
            alignment: Alignment.center,
            transform: Matrix4.identity()
              ..translate(50.0, 0.0, 0.0)
              ..rotateY(180 * math.pi / 180),
            child: FlareActor(
              "assets/Filip.flr",
              alignment: Alignment.center,
              fit: BoxFit.contain,
              animation: "idle",
            ),
          ),
        ],
      ),
    );
  }
}
