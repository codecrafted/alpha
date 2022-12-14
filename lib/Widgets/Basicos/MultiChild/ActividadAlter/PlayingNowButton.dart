import 'package:flutter/material.dart';

class PlayingNowButton extends StatelessWidget {
  IconData icon;
  Color? iconColor;
  Color? backGroundColor;
  var onPressed;

  PlayingNowButton(this.icon, this.onPressed,
      {this.iconColor = Colors.white,
      this.backGroundColor = Colors.transparent});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Icon(
        icon,
        color: iconColor,
        size: 35,
      ),
      style: ElevatedButton.styleFrom(
          padding: EdgeInsets.zero,
          primary: backGroundColor,
          shadowColor: backGroundColor),
    );
  }
}
