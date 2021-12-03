

import 'package:flutter/material.dart';

TextWidget({int number = 0}) {
  var datetime = DateTime.now();

  switch (number) {
    case 0:
      return Text(
          'Fajre'
      ); // The switch statement must be told to exit, or it will execute every case.
    case 1:
      return Text(
          'Dohre'
      );
    case 2:
      return Text(
          'Alasr'
      );
    case 3:
      return Text(
          'Maghrib'
      );
    case 4:
      return Text(
          'Isha'
      );
    default:
      return Text(
          'Nawafile'
      );
  }
}