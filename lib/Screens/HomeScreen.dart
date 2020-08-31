
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'AlbumContainerScreen.dart';
import 'PhotoContainerScreen.dart';
import 'VideoContainerScreen.dart';

class HomeScreen extends StatefulWidget {
  @override
  HomeScreenState createState() => new HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;

  final List<Widget> viewContainer = [
    PhotoContainerScreen(),
    VideoContainerScreen(),
    AlbumContainerScreen()
  ];

  @override
  Widget build(BuildContext context) {

    void onTabTapped(int index) {
      setState(() {
        currentIndex = index;
      });
    }

    return new Scaffold(
      appBar: AppBar(
        title: const Text("Gallery"),
        actions: <Widget>[
          new IconButton(
              icon: new Icon(Icons.search), onPressed: () {}),
          new IconButton(
              icon: new Icon(Icons.more_vert), onPressed: () {})
        ],
      ),
     body: viewContainer[currentIndex],
      bottomNavigationBar:  CurvedNavigationBar(
        backgroundColor: Colors.blueAccent,
        items: <Widget>[
          Icon(Icons.add, size: 30,),
          Icon(Icons.list, size: 30),
          Icon(Icons.compare_arrows, size: 30),
        ],
        onTap: onTabTapped,

          //Handle button tap

      ),
    );
    // TODO: implement build


  }
}



