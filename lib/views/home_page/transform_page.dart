import 'package:flutter/material.dart';

class TransformPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[100],
      appBar: AppBar(
        title: new Text("TransformDemoPage"),
        backgroundColor: Colors.blue[400],
      ),
      body: Container(
        margin: EdgeInsets.only(top: 30),
        child: new Card(
          margin: EdgeInsets.all(10),
          child: Container(
            height: 150,
            padding: EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                getHeader(context),
                Text(
                  "我是一个文本，我是一个文本，我是一个文本，我是一个文本，我是一个文本，",
                  overflow: TextOverflow.ellipsis,
                  softWrap: true,
                  maxLines: 3,
                  style: TextStyle(),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

//头像
Widget getHeader(BuildContext context) {
  ///向上偏移 -30 位置
  return Transform.translate(
    offset: Offset(0, -30),
    child: new Container(
      width: 72.0,
      height: 72.0,
      decoration: BoxDecoration(
        ///阴影
        boxShadow: [
          BoxShadow(color: Theme.of(context).cardColor, blurRadius: 4.0)
        ],
        ///形状
        shape: BoxShape.circle,
        ///图片
        image: DecorationImage(
          fit: BoxFit.cover,
          image: NetworkImage(
              'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1569298229946&di=ea4ffb2b140ef40035772bbcee7bbdd5&imgtype=0&src=http%3A%2F%2Fcimg2.163.com%2Fcatchimg%2F20090909%2F8112139_3.jpg'),
        ),
      ),
    ),
  );

  ///圆形头像还可以 CircleAvatar， ClipOval等实现
}
