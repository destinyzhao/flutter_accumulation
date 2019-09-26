import 'package:flutter/material.dart';
import 'widget/layout_one_Item.dart';

class LayoutPageOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Layout One'),
        backgroundColor: Colors.blue[400],
      ),
      body: LayoutOneItem(),
    );
  }

}
