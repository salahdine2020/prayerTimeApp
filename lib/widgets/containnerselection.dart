import 'package:flutter/material.dart';

class ContainnerPart extends StatelessWidget {
  DateTime dateTime;

  ContainnerPart({required this.dateTime});

  ContainerSelection(){
    /* todo:  get date time from DateTime.now() and compare with Time get it from
       and calculate sign
     */

  }
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * .06,
      //color: Colors.lightBlueAccent,
      decoration: BoxDecoration(
        color: Colors.teal,
        gradient: LinearGradient(
          colors: [Colors.blueAccent, Colors.tealAccent],
        ),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Spacer(),
            Text('01:30 PM'),
          ],
        ),
      ),
    );
  }
}
