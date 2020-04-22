import 'package:auto_animated/auto_animated.dart';
import 'package:flutter/material.dart';
import 'package:flutter_list_animation/data_source.dart';
import 'package:flutter_list_animation/list_item.dart';

class SliverListScreen extends StatefulWidget {
  @override
  _SliverListScreenState createState() => _SliverListScreenState();
}

class _SliverListScreenState extends State<SliverListScreen> {
  final DataSource _dataSource = DataSource();
  ScrollController _scrollController;

  @override
  void initState() {
    _scrollController = ScrollController();
    super.initState();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        controller: _scrollController,
        slivers: <Widget>[
          SliverAppBar(
              expandedHeight: 120,
              flexibleSpace: FlexibleSpaceBar(
                title: Text('List Animation', style: TextStyle(fontWeight: FontWeight.bold)),
              )),
          FutureBuilder<List<String>>(
            initialData: [],
            future: _dataSource.getCountriesFuture(),
            builder: (context, snapshot) {
              final List<String> countries = snapshot.data;
              return LiveSliverList(
                controller: _scrollController,
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
        ],
      ),
    );
  }
}
