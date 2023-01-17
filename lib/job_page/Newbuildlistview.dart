import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NewbuildListView extends StatelessWidget {
  final List<dynamic> Function(DateTime day) getEvent;
  final DateTime _selected;

  const NewbuildListView({required this.getEvent, required this._selected});

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      children: getEvent(_selected)
          .map(
            (event) => ListTile(
              title: Text(event.toString()),
            ),
          )
          .toList(),
    );
  }
}
