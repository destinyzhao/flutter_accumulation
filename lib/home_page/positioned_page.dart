import 'package:flutter/material.dart';

class PositionedPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('PositionedDemo'), backgroundColor: Colors.blue[400]),
      body: Container(
        color: Colors.orange[100],
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        margin: EdgeInsets.all(15),
        child: Stack(
          children: <Widget>[
            Positioned(
                child:MaterialButton(
                  minWidth: 100,
                  onPressed: () {},
                  color: Colors.greenAccent,
                ),
              right:10,
              top: 10,
            ),
            Positioned(
              child:MaterialButton(
                minWidth: 100,
                height: 40,
                onPressed: () {},
                color: Colors.red,
              ),
              left: MediaQuery.of(context).size.width / 2 * 0.8,
              top: MediaQuery.of(context).size.height / 2 * 0.7,
            ),
            Positioned(
              child:MaterialButton(
                minWidth: 100,
                onPressed: () {},
                color: Colors.yellow,
              ),
              left: 10,
              bottom: 10,
            ),
          ],
        ),
      ),
    );
  }
}
