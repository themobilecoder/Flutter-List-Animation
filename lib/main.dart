import 'package:flutter/material.dart';
import 'package:flutter_list_animation/list_item.dart';
import 'package:flutter_list_animation/list_screen.dart';
import 'package:flutter_list_animation/sliver_list_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
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
        title: Text('Animations', style: TextStyle(fontWeight: FontWeight.bold)),
      ),
      body: ListView(
        children: <Widget>[
          ListItem(
            title: 'List Animation',
            onPressed: () => Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => ListScreen(),
              ),
            ),
          ),
          ListItem(
            title: 'Sliver List Animation',
            onPressed: () => Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => SliverListScreen(),
              ),
            ),
          )
        ],
      ),
    );
  }
}
