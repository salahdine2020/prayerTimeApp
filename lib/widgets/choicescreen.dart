import 'package:flutter/material.dart';
import 'package:prayertimes/controllers/shareddb/sharedonboarding.dart';
import 'package:prayertimes/views/collectinformation.dart';
import 'package:prayertimes/views/homepage.dart';
import '../views/onboardingstage/locationpage.dart';
import '../views/onboardingstage/onboarding.dart';

class ChoiceScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: ReturnValues().returnlastscreen(),
      builder: (context, snap) {
        var data = snap.data;
        return data == true ?
        OnboardingPage() :
        HomePage();
      },
    );
  }
}
