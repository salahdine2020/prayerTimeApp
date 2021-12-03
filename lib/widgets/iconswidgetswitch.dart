import 'package:flutter/material.dart';

IconWidget({int number = 0}) {
  switch (number) {
    case 0:
      return Icon(
        Icons.notifications_outlined,
        color: Colors.redAccent,
      ); // The switch statement must be told to exit, or it will execute every case.
    case 1:
      return Icon(
        Icons.notifications_active_outlined,
        color: Colors.blueAccent,
      );
    case 2:
      return Icon(
        Icons.notifications_paused_outlined,
        color: Colors.blueGrey,
      );
    default:
      return Icon(
        Icons.notifications_outlined,
      );
  }
}