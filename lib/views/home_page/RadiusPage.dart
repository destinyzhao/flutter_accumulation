import 'package:flutter/material.dart';

class RadiusPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('圆角Demo'),
      ),
      body: Container(
        alignment: Alignment.center,
        margin: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('BoxDecoration 圆角'),
            Container(
              width: 100.0,
              height: 100.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage('https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1569298229946&di=ea4ffb2b140ef40035772bbcee7bbdd5&imgtype=0&src=http%3A%2F%2Fcimg2.163.com%2Fcatchimg%2F20090909%2F8112139_3.jpg'),
                ),
                borderRadius: BorderRadius.all(Radius.circular(20.0)),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text("ClipRRect 圆角对 child"),
            ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(50.0)),
              child: Image.network('https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1569298229946&di=ea4ffb2b140ef40035772bbcee7bbdd5&imgtype=0&src=http%3A%2F%2Fcimg2.163.com%2Fcatchimg%2F20090909%2F8112139_3.jpg',
                fit: BoxFit.cover,
                width: 100,
                height: 100,
              ),
            )
          ],
      ),
      ),
    );
  }
}