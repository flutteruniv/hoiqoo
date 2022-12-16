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
                Tab(
                  text: 'リスト',
                  icon: Icon(
                    Icons.access_time_filled_sharp,
                    color: Colors.black54,
                  ),
                ),
                Tab(
                  text: 'カレンダー',
                  icon: Icon(
                    Icons.calendar_month_outlined,
                    color: Colors.black54,
                  ),
                ),
              ],
            ),
            leading: Image.asset('images/guratan_katakata 1.jpg'),
            title: Text(
              'hoiqoo',
              style: TextStyle(color: Colors.black),
            ),
            backgroundColor: Colors.white,
            actions: [
              IconButton(
                icon: Icon(
                  Icons.notifications,
                  color: Colors.black54,
                ),
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
