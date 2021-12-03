import 'package:flutter/material.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

Widget BottomNavigationBar({currentIndex, Function? fonction}){
  return SalomonBottomBar(
    currentIndex: currentIndex,
    onTap: (i) => fonction,//setState(() => _currentIndex = i),
    items: [
      /// Home
      SalomonBottomBarItem(
        icon: Icon(Icons.home),
        title: Text("Home"),
        selectedColor: Colors.purple,
      ),

      /// Likes
      SalomonBottomBarItem(
        icon: Icon(Icons.favorite_border),
        title: Text("Likes"),
        selectedColor: Colors.pink,
      ),

      /// Search
      SalomonBottomBarItem(
        icon: Icon(Icons.search),
        title: Text("Search"),
        selectedColor: Colors.orange,
      ),

      /// Profile
      SalomonBottomBarItem(
        icon: Icon(Icons.person),
        title: Text("Profile"),
        selectedColor: Colors.teal,
      ),
    ],
  );
}

