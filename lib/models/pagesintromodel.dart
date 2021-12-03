import 'package:flutter/material.dart';
import 'package:intro_views_flutter/intro_views_flutter.dart';
import 'package:prayertimes/utilities/config/textsizinf.dart';

class PageIntroModels {
  final pages = [
    // todo: page1 time prayer
    PageViewModel(
      pageBackground: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            stops: [0.0, 1.0],
            begin: FractionalOffset.topCenter,
            end: FractionalOffset.bottomCenter,
            tileMode: TileMode.repeated,
            colors: [
              Colors.orange,
              Colors.pinkAccent,
            ],
          ),
        ),
      ),
      // iconImageAssetPath: 'assets/air-hostess.png',
      bubble: Image.asset('assets/images/mawaqit.png'),
      body: const Text(
        ' أَقِمِ الصَّلَاةَ لِدُلُوكِ الشَّمْسِ إِلَى غَسَقِ اللَّيْلِ وَقُرْآنَ الْفَجْرِ إِنَّ قُرْآنَ الْفَجْرِ كَانَ مَشْهُودًا [الإسراء: 78].',
        style: TextStyle(fontSize: introsize),
      ),
      title: const Text(
        'مواقيت الصلاة',
        style: TextStyle(fontSize: titleintrosize),
      ),
      titleTextStyle: const TextStyle(fontFamily: 'MyFont', color: Colors.white),
      bodyTextStyle: const TextStyle(fontFamily: 'MyFont', color: Colors.white),
      mainImage: Image.asset(
        'assets/images/mawaqit.png',
        height: 285.0,
        width: 285.0,
        alignment: Alignment.center,
      ),
    ),
    // todo: prayer doua
    PageViewModel(
      pageBackground: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            stops: [0.0, 1.0],
            begin: FractionalOffset.topCenter,
            end: FractionalOffset.bottomCenter,
            tileMode: TileMode.repeated,
            colors: [
              Colors.lightGreen,
              Colors.green,
            ],
          ),
        ),
      ),
      //pageColor: const Color(0xFF8BC34A),
      iconImageAssetPath: 'assets/images/doua5.png',
      body: const Text(
      'فَإِذَا قَضَيْتُمُ الصَّلَاةَ فَاذْكُرُوا اللَّهَ قِيَامًا وَقُعُودًا وَعَلَى جُنُوبِكُم[النساء: 103]ْ',
        style: TextStyle(fontSize: introsize),
      ),
      title: const Text('أدعية الصلاة',style: TextStyle(fontSize: titleintrosize),),
      mainImage: Image.asset(
        'assets/images/doua5.png',
        height: 285.0,
        width: 285.0,
        alignment: Alignment.center,
      ),
      titleTextStyle: const TextStyle(fontFamily: 'MyFont', color: Colors.white),
      bodyTextStyle: const TextStyle(fontFamily: 'MyFont', color: Colors.white),
    ),
    // todo: profile information
    PageViewModel(
      pageBackground: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            stops: [0.0, 1.0],
            begin: FractionalOffset.topCenter,
            end: FractionalOffset.bottomCenter,
            tileMode: TileMode.repeated,
            colors: [
              Colors.blueAccent,
              Colors.blue,
            ],
          ),
        ),
      ),
      //pageColor: const Color(0xFF03A9F4),
      iconImageAssetPath: 'assets/images/profile2.png',
      body: const Text(
        'تستطيع تغيير مكان تواجدك في أي وقت للأطلاع على المواقيت في الوقت الصحيح',
        style: TextStyle(fontSize: introsize),
      ),
      title: const Text('بروفايل خاص', style: TextStyle(fontSize: titleintrosize),),
      mainImage: Image.asset(
        'assets/images/profile2.png',
        height: 285.0,
        width: 285.0,
        alignment: Alignment.center,
      ),
      titleTextStyle:
      const TextStyle(fontFamily: 'MyFont', color: Colors.white),
      bodyTextStyle: const TextStyle(fontFamily: 'MyFont', color: Colors.white),
    ),
  ];
}