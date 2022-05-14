import 'package:flutter/material.dart';
import 'package:zaloapp/main1.dart';

import 'main.dart';
import 'main2.dart';
import 'main3.dart';
import 'main4.dart';

class MainBoard extends StatefulWidget {
  const MainBoard({Key? key}) : super(key: key);

  @override
  _MainBoardState createState() => _MainBoardState();
}

class _MainBoardState extends State<MainBoard> {
  int indexPage = 0;

  final List<Widget> _list = <Widget>[const MyApp(),  const MyApp1(), const MyApp2(),const MyApp3(),const MyApp4()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        children: _list,
        index: indexPage,
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        currentIndex: indexPage,
        onTap: (value) {
          setState(() {
            indexPage = value;
          });
        },
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.message), label: "Tin nhắn"),
          BottomNavigationBarItem(
              icon: Icon(Icons.perm_contact_calendar_outlined),
              label: "Danh bạ"),
          BottomNavigationBarItem(
            label: 'Khám phá',
            icon: Icon(Icons.widgets_outlined),
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.access_time), label: "Nhật ký"),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_outline), label: "Cá nhân"),
        ],
      ),
    );
  }

  pageChooser() {
    switch (indexPage) {
      case 0:
        return const MyApp();
      case 1:
        return  const MyApp1();
      case 2:
        return const MyApp2();
      case 3:
        return const MyApp3();
      case 4:
        return const MyApp4();
      default:
        return const Center(
            child: Text('No page found by page chooser.',
                style: TextStyle(fontSize: 30.0)));
    }
  }
}
