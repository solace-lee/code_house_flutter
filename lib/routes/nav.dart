// import 'package:codehouseflutter/nav/tabs/lean.dart';
import 'package:codehouseflutter/routes/tabs/Add.dart';
import 'package:codehouseflutter/routes/tabs/Search.dart';
import 'package:flutter/material.dart';

class NavBar extends StatefulWidget {
  NavBar({Key key}) : super(key: key);
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int _currentIndex = 0;
  List _listPage = [
    SearchPage(),
    AddPage(),
    // LeanPage()
  ];
  @override
  Widget build(BuildContext context) {
    // TODO: 底部导航栏
    return Scaffold(
      appBar: AppBar(
        title: Text('学生成绩查询系统')
      ),
      body: this._listPage[this._currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: this._currentIndex,
        onTap: (int index) {
          setState(() {
            this._currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.search), title: Text('查询')),
          BottomNavigationBarItem(icon: Icon(Icons.library_add), title: Text('管理')),
          // BottomNavigationBarItem(icon: Icon(Icons.library_add), title: Text('学习'))
        ],
      ),
    );
  }
}
