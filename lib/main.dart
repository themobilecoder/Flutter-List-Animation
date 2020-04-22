import 'package:auto_animated/auto_animated.dart';
import 'package:flutter/material.dart';
import 'package:flutter_list_animation/data_source.dart';
import 'package:flutter_list_animation/future_list_screen.dart';
import 'package:flutter_list_animation/list_item.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Color(0xffffe0b2),
        canvasColor: Color(0xffffffe4),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List Animation', style: TextStyle(fontWeight: FontWeight.bold)),
      ),
      body: ListView(
        children: <Widget>[
          ListItem(
            title: 'Future List Animation',
            onPressed: () => Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => FutureListScreen(),
              ),
            ),
          )
        ],
      ),
    );
  }
}
