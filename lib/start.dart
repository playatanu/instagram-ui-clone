import 'package:flutter/material.dart';
import 'package:instagram/widget/box.dart';
import 'data/barName.dart';

class Start extends StatefulWidget {
  Start({Key? key}) : super(key: key);

  @override
  _StartState createState() => _StartState();
}

class _StartState extends State<Start> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset(
          'images/logo.png',
          height: 50,
        ),
        actions: [
          Image.asset(
            'images/uv.png',
            height: 20,
          ),
          Image.asset(
            'images/chat.png',
            height: 20,
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        currentIndex: 0,
        items: [
          BottomNavigationBarItem(
            icon: new Icon(
              Icons.home,
              color: Colors.black,
            ),
            title: new Text(''),
          ),
          BottomNavigationBarItem(
            icon: new Icon(
              Icons.search,
              color: Colors.black,
            ),
            title: new Text(''),
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'images/reals.png',
              height: 30,
            ),
            title: new Text(''),
          ),
          BottomNavigationBarItem(
            icon: new Icon(
              Icons.favorite_border,
              color: Colors.black,
            ),
            title: new Text(''),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.account_circle,
              color: Colors.black,
            ),
            title: Text(''),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Box(
              userImage: userImage[0],
              user: barName[0],
              post: barPost[0],
            ),
            Box(
              userImage: userImage[1],
              user: barName[1],
              post: barPost[1],
            ),
            Box(
              userImage: userImage[2],
              user: barName[2],
              post: barPost[2],
            ),
            Container(
              child: null,
            ),
          ],
        ),
      ),
    );
  }
}
