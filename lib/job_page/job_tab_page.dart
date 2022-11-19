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
                Tab(text: 'リスト', icon: Icon(Icons.access_time_filled_sharp)),
                Tab(text: 'カレンダー', icon: Icon(Icons.calendar_month_outlined)),
              ],
            ),
            title: Text('hoiqoo'),
            backgroundColor: Colors.white10,
            actions: [
              IconButton(
                icon: Icon(Icons.notifications),
                onPressed: () => {},
              ),
            ],
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
