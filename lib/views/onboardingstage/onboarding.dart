import 'package:flutter/material.dart';
import 'package:intro_views_flutter/intro_views_flutter.dart';
import 'package:prayertimes/controllers/shareddb/sharedonboarding.dart';
import 'package:prayertimes/models/pagesintromodel.dart';
import 'package:prayertimes/views/homepage.dart';
import 'namepage.dart';

class OnboardingPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return IntroViewsFlutter(
      PageIntroModels().pages,
      showNextButton: true,
      showBackButton: true,
      showSkipButton: true,
      doneText: Text('أنطلق'),
      skipText: Text('تجاوز'),
      backText: Text('خلف'),
      nextText: Text('التالي'),
      onTapDoneButton: () {
        // Use Navigator.pushReplacement if you want to dispose the latest route
        // so the user will not be able to slide back to the Intro Views.
        // todo: save shared value
        //SaveValues().savelastscreen(val: true);
        Navigator.push(
          context,
          MaterialPageRoute(builder: (_) => NamePage(),
          ),
        );
      },
      pageButtonTextStyles: const TextStyle(
        color: Colors.white,
        fontSize: 18.0,
      ),
    );
  }
}
