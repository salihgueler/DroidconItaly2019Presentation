import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';

class AndroidAnimationWidget extends StatefulWidget {
  @override
  _AndroidAnimationWidgetState createState() => _AndroidAnimationWidgetState();
}

class _AndroidAnimationWidgetState extends State<AndroidAnimationWidget> {

  final String waveAnimation = 'wave';
  final String winkAnimation = 'wink';
  final String smileAnimation = 'smile';
  final String antennaAnimation = 'antenna';
  String animationName;

  @override
  void initState() {
    super.initState();
    animationName = waveAnimation;
  }
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        FlareActor(
          'flare_animation/droidcon_italy.flr',
          animation: animationName,
        ),
        Positioned(
          top: 32,
          right: 32,
          child: RaisedButton(
            child: Text('Wave'),
            onPressed: () {
              setState(() {
                animationName = waveAnimation;
              });
            },
          ),
        ),
        Positioned(
          top: 128,
          right: 32,
          child: RaisedButton(
            child: Text('Smile'),
            onPressed: () {
              setState(() {
                animationName = smileAnimation;
              });
            },
          ),
        ),
        Positioned(
          top: 224,
          right: 32,
          child: RaisedButton(
            child: Text('Move Antennas'),
            onPressed: () {
              setState(() {
                animationName = antennaAnimation;
              });
            },
          ),
        ),
        Positioned(
          top: 320,
          right: 32,
          child: RaisedButton(
            child: Text('Wink'),
            onPressed: () {
              setState(() {
                animationName = winkAnimation;
              });
            },          ),
        ),
      ],
    );
  }
}