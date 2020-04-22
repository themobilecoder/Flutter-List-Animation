import 'package:flutter/material.dart';

class ListItem extends StatelessWidget {
  final String title;
  final Function onPressed;
  ListItem({@required this.title, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Color(0xffffffe4),
      elevation: 2,
      child: InkWell(
        onTap: onPressed ?? () {},
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Text(
            title,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
