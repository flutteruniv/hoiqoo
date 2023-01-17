import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

import 'Newbuildlistview.dart';

void main() {
  runApp(
    const JobCalendarPage(),
  );
}

class JobCalendarPage extends StatelessWidget {
  const JobCalendarPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Map<DateTime, List> _eventsList = {};

  DateTime _focused = DateTime.now(); //_focusedが今日を示めす
  DateTime? _selected;
  final daynumber = 1000000;
  final monthnumber = 1000;

  int getHashCode(DateTime key) {
    return key.day * daynumber + key.month * monthnumber + key.year;
  }

  @override
  void initState() {
    super.initState();

    _selected = _focused;
    _eventsList = {
      DateTime.now().subtract(Duration(days: 2)): ['Test A', 'Test B'],
      DateTime.now(): ['おりひめ保育園', 'ひこぼし保育園', 'Test E', 'Test F'],
    };
  }

  @override
  Widget build(BuildContext context) {
    final _events = LinkedHashMap<DateTime, List>(
      equals: isSameDay,
      hashCode: getHashCode,
    )..addAll(_eventsList);

    List getEvent(DateTime day) {
      return _events[day] ?? [];
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Colors.white38,
      ),
      body: Column(
        children: [
          TableCalendar(
            firstDay: DateTime(_focused.year, _focused.month, 1),
            lastDay: DateTime(_focused.year + 10, _focused.month, 1),
            eventLoader: getEvent,
            //追記/*//*/
            selectedDayPredicate: (day) {
              return isSameDay(_selected, day);
            },

            onDaySelected: (selected, focused) {
              if (!isSameDay(_selected, selected)) {
                setState(
                  () {
                    _selected = selected;
                    _focused = focused;
                  },
                );
              }
            },
            focusedDay: _focused,
          ),
          //--追記--------------------------------------------------------------
          NewbuildListView(getEvent: getEvent, selected: _selected!)

          //--------------------------------------------------------------------
        ],
      ),
    );
  }
}
