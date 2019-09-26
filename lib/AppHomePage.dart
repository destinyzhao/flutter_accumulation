import 'package:flutter/material.dart';
import 'home_page/home_page.dart';
import 'setting_page/SettingPage.dart';

class AppHomePage extends StatefulWidget{
  @override
  @override
  _AppHomePageState createState() => _AppHomePageState();
}

class _AppHomePageState extends State<AppHomePage>{

  List<Widget> _list = List();
  int _currentIndex = 0;
  List bottomBarData = [
    {'text': '首页', "icon":"images/tab_home_n.png",'activeIcon': "images/tab_home_s.png"},
    {'text': '设置', "icon":"images/tab_setting_n.png",'activeIcon': "images/tab_setting_s.png"}
  ];
  List<BottomNavigationBarItem> _myTabs = [];
  String appBarTitle;

  @override
  void initState() {
    super.initState();


    appBarTitle = bottomBarData[0]['text'];

    for (int i = 0; i < bottomBarData.length; i++) {
      _myTabs.add(BottomNavigationBarItem(
        icon: new Image.asset(bottomBarData[i]['icon'], height: 30.0, width: 30.0
        ),
        activeIcon: new Image.asset(bottomBarData[i]['activeIcon'], height: 30.0, width: 30.0),
        title: Text(
          bottomBarData[i]['text'],
        ),

      ));
    }
    _list
      ..add(HomePage())
      ..add(SettingPage());
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: IndexedStack(
        index: _currentIndex,
        children: _list,
      ),
      bottomNavigationBar: BottomNavigationBar(
          items: _myTabs,
          //高亮  被点击高亮
          currentIndex: _currentIndex,
          //修改 页面
          onTap: _itemTapped,
          //shifting :按钮点击移动效果
          //fixed：固定
          type: BottomNavigationBarType.fixed,
          // 未选中颜色
          unselectedItemColor: Colors.grey,
          // 选中颜色
          selectedItemColor: Colors.orange,
      ),
    );
  }

  void _itemTapped(int index) {
    setState(() {
      _currentIndex = index;
      appBarTitle = bottomBarData[index]['text'];
    });
  }
}