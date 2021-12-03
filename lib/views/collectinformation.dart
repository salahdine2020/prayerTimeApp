import 'package:flutter/material.dart';
import 'onboardingstage/locationpage.dart';
import 'onboardingstage/namepage.dart';

class CollectInformartion extends StatelessWidget {
  final PageController controller = PageController(initialPage: 0);
  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
        body: PageView(
          scrollDirection: Axis.horizontal,
          controller: controller,
          children: [
            NamePage(),
            //LocationPage2(),
          ],
        ),
      );
  }
  Widget? NamePage1(){

  }
  Widget? LocationPage1(){

  }
}
