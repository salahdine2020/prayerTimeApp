import 'package:flutter/material.dart';
import 'package:prayertimes/views/adkare.dart';
import 'package:prayertimes/views/prayertimepage.dart';
import 'package:prayertimes/views/profilepage.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var currentIndex = 0;
  List<Widget> _listwidgets = [
    PrayerTimePage(),
    AdkarePage(),
    Center(
      child: Text('Search By Zone'),
    ),
    ProfileScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(),
      // TODO: appBar: AppBar(title: const Text('Home'),),
      body: _listwidgets[currentIndex],
    );
  }

  Widget BottomNavigationBar(){
    return SalomonBottomBar(
      currentIndex: currentIndex,
      onTap: (i) => setState(() => currentIndex = i),
      items: [
        /// Home
        SalomonBottomBarItem(
          icon: Icon(Icons.access_time),
          title: Text(" مواقيت"),
          selectedColor: Colors.purple,
        ),

        /// Likes
        SalomonBottomBarItem(
          icon: Icon(Icons.description),
          title: Text("الدعاء"),
          selectedColor: Colors.pink,
        ),

        /// Search
        SalomonBottomBarItem(
          icon: Icon(Icons.timeline),
          title: Text("ألأوقات"),
          selectedColor: Colors.orange,
        ),

        /// Profile
        SalomonBottomBarItem(
          icon: Icon(Icons.person),
          title: Text("بروفايل"),
          selectedColor: Colors.teal,
        ),
      ],
    );
  }
}
