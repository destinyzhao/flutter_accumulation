import 'package:flutter/material.dart';

class WrapPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Warp Demo"),
        backgroundColor: Colors.blue[400],
      ),
      body: Container(
        child: Wrap(children: <Widget>[
          for (String item in tags) TagItem(item)
        ]),
      ),
    );
  }
}

class TagItem extends StatelessWidget {
  final String text;

  TagItem(this.text);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      margin: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
      decoration: BoxDecoration(
          border:  Border.all(color: Colors.blueAccent.withAlpha(60), width: 1.0),
          borderRadius: BorderRadius.all(Radius.circular(5))),
      child: Container(
        margin: EdgeInsets.all(8),
        child: Text(text),
      ),
    );
  }
}

const List<String> tags = [
  "肯德基",
  "小哥哥你的东西掉了",
  "小姐姐好漂亮啊",
  "这个东西是啥",
  "哈哈哈",
  "好困啊",
  "今天好运",
  "明天好运来",
  "今年快结束了",
  "我累啊",
  "你写的什么代码",
  "多多多"
];
