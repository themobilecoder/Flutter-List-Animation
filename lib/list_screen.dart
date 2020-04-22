import 'package:auto_animated/auto_animated.dart';
import 'package:flutter/material.dart';
import 'package:flutter_list_animation/data_source.dart';
import 'package:flutter_list_animation/list_item.dart';

class ListScreen extends StatelessWidget {
  final DataSource _dataSource = DataSource();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List Animation', style: TextStyle(fontWeight: FontWeight.bold)),
      ),
      body: FutureBuilder<List<String>>(
        initialData: [],
        future: _dataSource.getCountriesFuture(),
        builder: (context, snapshot) {
          final List<String> countries = snapshot.data;
          return LiveList(
            itemCount: countries.length,
            itemBuilder: (context, index, animation) {
              return FadeTransition(
                opacity: animation,
                child: SlideTransition(
                  position: Tween<Offset>(
                    begin: Offset(0, 0.3),
                    end: Offset.zero,
                  ).animate(animation),
                  child: ListItem(
                    title: countries[index],
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
