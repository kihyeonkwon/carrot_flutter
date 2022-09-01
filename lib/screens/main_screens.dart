import 'package:carrot/screens/chatting/chatting_screen.dart';
import 'package:carrot/screens/home/home_screen.dart';
import 'package:carrot/screens/my_carrot/my_carrot_screen.dart';
import 'package:carrot/screens/near_me/near_me_screen.dart';
import 'package:carrot/screens/neighborhood_life/neighborhood_life_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainScreens extends StatefulWidget {
  const MainScreens({Key? key}) : super(key: key);

  @override
  State<MainScreens> createState() => _MainScreensState();
}

class _MainScreensState extends State<MainScreens> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(index: _selectedIndex, children: const [
        HomeScreen(),
        NeighborhoodLifeScreen(),
        NearMeScreen(),
        ChattingScreen(),
        MyCarrotScreen(),
      ]),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black54,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(icon: Icon(CupertinoIcons.home), label: '홈'),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.square_on_square), label: '동네생활'),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.placemark), label: '내 근처'),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.chat_bubble), label: '채팅'),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.person), label: '나의 당근'),
        ],
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        currentIndex: _selectedIndex,
      ),
    );
  }
}
