import 'package:fltter_b23/grid_view_demo.dart';
import 'package:fltter_b23/login.dart';
import 'package:fltter_b23/page_view.dart';
import 'package:flutter/material.dart';

class TabbarViewDemo extends StatelessWidget {
  const TabbarViewDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Tabbar"),
          bottom: TabBar(tabs: [
            Icon(Icons.home),
            Icon(Icons.favorite),
            Icon(Icons.person)
          ],),
        ),
        body: TabBarView(children: [
          LoginView(),
          PageViewDemo(),
          GridViewDemo()
        ],),
      ),
    );
  }
}

