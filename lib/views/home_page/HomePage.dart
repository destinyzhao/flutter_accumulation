import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(backgroundColor: Colors.blue[300], title: Text("首页")),
        body: new Scrollbar(
          child: _buildListView(),
        ));
  }
}

Widget _buildListView() {
  List<String> listTitle = ['百度地图', '其他'];
  return new ListView.separated(
      itemBuilder: (context, item) {
        return buildListViewData(context,listTitle[item]);
      },
      separatorBuilder: (BuildContext context, int index) => new Divider(),
      itemCount: listTitle.length);
}

Widget buildListViewData(BuildContext context, String titleItem) {
  return ListTile(
    title: Text(
      titleItem,
      style: TextStyle(fontSize: 18),
    ),
    trailing: Icon(Icons.keyboard_arrow_right),
    onTap: () {
//      Navigator.push(context,  MaterialPageRoute(builder: (context) => BaiduMapPage()));
    },
  );
}
