import 'package:flutter/material.dart';

class TextLineHeightPage extends StatelessWidget{
  final double leading = 0.9;
  final double textLineHeight = 2;
  final double fontSize = 16;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('文本行距'),
      ),
      body: Container(
        margin: EdgeInsets.all(20),
        child: Transform.translate(
          offset: Offset(0, fontSize * leading / 2),
          child: Text(
            textContent,
            strutStyle: StrutStyle(forceStrutHeight: true, height: textLineHeight, leading: leading),
            style: TextStyle(
              fontSize: fontSize,
              color: Colors.black,
              //backgroundColor: Colors.greenAccent),
            ),
          ),
        ),
      ),
    );
  }
}

const textContent =
    "我是一个很帅的文本,我是一个很帅的文本,我是一个很帅的文本,我是一个很帅的文本,我是一个很帅的文本,我是一个很帅的文本"
    ",我是一个很帅的文本,我是一个很帅的文本,我是一个很帅的文本,我是一个很帅的文本,我是一个很帅的文本,";