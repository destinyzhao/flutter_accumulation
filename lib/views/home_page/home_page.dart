import 'package:flutter/material.dart';
import 'radius_page.dart';
import 'transform_page.dart';
import 'text_line_height_page.dart';

class HomePage extends StatefulWidget {
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(backgroundColor: Colors.blue[400], title: Text("首页")),
        body: new Scrollbar(
          child: _buildListView(),
        ));
  }
}

Widget _buildListView() {
  return new ListView.separated(
      itemBuilder: (context, index) {
        return buildListViewData(context, routerName[index],index);
      },
      separatorBuilder: (BuildContext context, int index) => new Divider(),
      itemCount: routerName.length);
}

Widget buildListViewData(
    BuildContext context, String titleItem, int index) {
  return ListTile(
    title: Text(
      titleItem,
      style: TextStyle(fontSize: 18),
    ),
    trailing: Icon(Icons.keyboard_arrow_right),
    onTap: () {
      routerPage(index,context);
    },
  );
}

const List<String> routerName = ["圆角","Transform","文本间距"];

void routerPage(int index,BuildContext context){
  switch(index){
    case 0:
      Navigator.push(context,MaterialPageRoute(builder: (context) => new RadiusPage()),
      );
      break;
    case 1:
      Navigator.push(context,MaterialPageRoute(builder: (context) => new TransformPage()),
      );
      break;
    case 2:
      Navigator.push(context,MaterialPageRoute(builder: (context) => new TextLineHeightPage()),
      );
      break;
  }
}

