import 'package:flutter/material.dart';

class SettingPage extends StatefulWidget{
  _SettingPageState createState() => _SettingPageState();

}

class _SettingPageState extends State<SettingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(backgroundColor: Colors.blue[300], title: Text("设置")),
        body: Column(
          children: <Widget>[
            Container(
              color: Colors.red,
            )
          ],
        ));
  }
}