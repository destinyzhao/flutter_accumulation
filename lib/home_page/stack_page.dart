import 'package:flutter/material.dart';

class StackPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Stack Demo'),
        backgroundColor: Colors.blue[400],
      ),
      body: Stack(
        alignment: AlignmentDirectional.center,
        children: <Widget>[
          Container(
            width: 200,
            height: 200,
            color: Colors.red,
          ),
          Container(
            width: 160,
            height: 160,
            color: Colors.blue,
          ),
          Container(
            width: 120,
            height:120,
            color: Colors.green,
          ),
        ],
      ),
    );
  }
}