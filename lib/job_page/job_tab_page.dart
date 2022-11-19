import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import './job_calendar_page.dart';
import './job_list_page.dart';

void main() => runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home: JobTabPage(),
      ),
    );

class TabInfo {
  String label;
  Widget widget;
  TabInfo(this.label, this.widget);
}

class JobTabPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            bottom: const TabBar(
              tabs: [
                Tab(icon: Icon(Icons.directions_car)),
                Tab(icon: Icon(Icons.directions_transit)),
              ],
            ),
            title: const Text('タブバー'),
          ),
          body: TabBarView(
            children: [
              JobListPage(),
              JobCalendarPage(),
            ],
          ),
        ),
      ),
    );
  }
}
