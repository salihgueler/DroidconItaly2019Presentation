import 'package:example_flutter/droidcon_italy/styles.dart';
import 'package:flutter/material.dart';

class EntrySlide extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(32),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: const <Widget>[
            Text(
              'Animations in Flutter',
              style: mediumTitleStyle,
            ),
            Text(
              'Muhammed Salih Güler',
              style: smallTitleStyle,
            ),
          ],
        ),
      ),
    );
  }
}
