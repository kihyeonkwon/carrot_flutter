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
      body: IndexedStack(index: _selectedIndex, children: [
        Container(
            color: Colors.orange,
            child: const Center(
                child: Text('Indexed Stack 1',
                    style: TextStyle(fontSize: 20, color: Colors.black)))),
        Container(
            color: Colors.redAccent[100],
            child: const Center(
                child: Text('Indexed Stack 2',
                    style: TextStyle(fontSize: 20, color: Colors.black)))),
        Container(
            color: Colors.orange,
            child: const Center(
                child: Text('Indexed Stack 3',
                    style: TextStyle(fontSize: 20, color: Colors.black))))
      ]),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(CupertinoIcons.home), label: '홈'),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.chat_bubble), label: '채팅'),
          BottomNavigationBarItem(icon: Icon(CupertinoIcons.home), label: '홈')
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
