import 'package:flutter/material.dart';

Widget LayoutOneItem() {

  return Container(
    margin: EdgeInsets.only(top: 10,left: 10,right: 10),
    ///卡片包装
    child: Card(
      ///增加点击效果
        child: FlatButton(
            onPressed: () {
              print("点击了哦");
            },
            child: Padding(
              padding: EdgeInsets.only(
                  left: 0.0, top: 10.0, right: 10.0, bottom: 10.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  ///文本描述
                  Container(
                      child: Text(
                        "我是一个很帅的文本。我是一个很帅的文本。我是一个很帅的文本。我是一个很帅的文本。"
                            "我是一个很帅的文本。我是一个很帅的文本。我是一个很帅的文本。",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 14.0,
                        ),

                        ///最长三行，超过 ... 显示
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                      ),
                      margin: EdgeInsets.only(top: 6.0, bottom: 2.0),
                      alignment: Alignment.topLeft),
                  Padding(padding: EdgeInsets.all(10.0)),

                  ///三个平均分配的横向图标文字
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      getBottomItem(Icons.star, "1000",MainAxisAlignment.start),
                      getBottomItem(Icons.link, "1000",MainAxisAlignment.center),
                      getBottomItem(Icons.subject, "1000",MainAxisAlignment.end),
                    ],
                  ),
                ],
              ),
            )
        )
    ),
  );
}

///返回一个居中带图标和文本的Item
Widget getBottomItem(IconData icon, String text,MainAxisAlignment mainAxisAlignment) {
  ///充满 Row 横向的布局
  return Expanded(
    flex: 1,
    child: Container(
      ///横向布局
      child: Row(
        ///主轴居中,即是横向居中
        mainAxisAlignment: mainAxisAlignment,
        ///大小按照最大充满
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          ///一个图标，大小16.0，灰色
          Icon(
            icon,
            size: 16.0,
            color: Colors.grey,
          ),
          ///间隔
          Padding(padding:EdgeInsets.only(left: 5.0)),
          ///显示文本
          Text(
            text,
            //设置字体样式：颜色灰色，字体大小14.0
            style: new TextStyle(color: Colors.grey, fontSize: 14.0),
            //超过的省略为...显示
            overflow: TextOverflow.ellipsis,
            //最长一行
            maxLines: 1,
          ),
        ],
      ),
    ),
  );
}

