import 'package:flutter/material.dart';
import 'dart:math';
import 'package:prayertimes/models/adkaremodel.dart';
import 'package:prayertimes/utilities/constants/icons.dart';
import 'package:prayertimes/widgets/carsoule.dart';



class AdkarePage extends StatefulWidget {
  @override
  _AdkarePageState createState() =>  _AdkarePageState();
}

var cardAspectRatio = 12.0 / 16.0;
var widgetAspectRatio = cardAspectRatio * 1.2;

class _AdkarePageState extends State<AdkarePage> {
  var currentPage = images.length - 1.0;

  @override
  Widget build(BuildContext context) {
    PageController controller = PageController(initialPage: images.length - 1);
    controller.addListener(() {
      setState(() {
        currentPage = controller.page!;
      });
    });

    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [
//                Color(0xFF1b1e44),
//                Color(0xFF2d3447),
              Colors.black38,
              Colors.black12,
              ],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              tileMode: TileMode.clamp,
          ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 64,
                ),
                Stack(
                  children: <Widget>[
                    CardScrollWidget(currentPage),
                    Positioned.fill(
                      child: PageView.builder(
                        itemCount: images.length,
                        controller: controller,
                        reverse: true,
                        itemBuilder: (context, index) {
                          return Container();
                        },
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}