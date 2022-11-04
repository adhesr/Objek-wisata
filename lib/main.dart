// import 'dart:html';
// import 'package:universal_html/html.dart' as html;

import 'dart:html';
import "package:objek_wisata/simpan.dart";
import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import "package:objek_wisata/biodata.dart";


void main() {
  runApp(MyHomePage());
}

class MyHomePage extends StatefulWidget{
  @override 
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>{

  int _currentIndex = 0;
  late PageController _pageController;

  @override
  void initState(){
    super.initState();
    _pageController = PageController();
  } 

  @override 
  void dispose(){
    _pageController.dispose();
    super.dispose();
  }
  
  @override 
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Aplikasi")), 
        body: SizedBox.expand(
          child: PageView(
            controller: _pageController,
            onPageChanged: (index){
              setState(() {
                _currentIndex = index;
              });
           },
           children: [
          //  Navigator.push(context, MaterialPageRoute(builder: (context) => Home()),
            Home(),
              
            Container(
              color: Colors.red,
            ),
            Biodata(),

            Container(
              color: Colors.white,
            ),
           ]
         ),
       ),
      bottomNavigationBar: BottomNavyBar(
          selectedIndex: _currentIndex,
          onItemSelected: (index){
            setState(() {
              _pageController.jumpToPage(index);
            });

          
          },
          items: <BottomNavyBarItem>[
            BottomNavyBarItem(title: Text("Menu"),icon: Icon(Icons.apps)),
            BottomNavyBarItem(title: Text("Home"),icon: Icon(Icons.home)),
            BottomNavyBarItem(title: Text("Biodata"),icon: Icon(Icons.people_outline)),
            BottomNavyBarItem(title: Text("settings"),icon: Icon(Icons.settings)),
          ]
          ,)
      ,)
    );
  }
}


