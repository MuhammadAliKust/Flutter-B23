import 'package:fltter_b23/list_view.dart';
import 'package:fltter_b23/page_view.dart';
import 'package:fltter_b23/providers/user.dart';
import 'package:fltter_b23/screen_a.dart';
import 'package:fltter_b23/tabbar_view.dart';
import 'package:fltter_b23/time_picker.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'asset_image.dart';
import 'bottom_nav_bar.dart';
import 'bottom_sheet.dart';
import 'date_picker.dart';
import 'dialog_box.dart';
import 'drop_down.dart';
import 'google_map.dart';
import 'grid_view_demo.dart';
import 'login.dart';
import 'multiple_selection.dart';
import 'network_image.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [ChangeNotifierProvider(create: (context) => UserProvider())],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ScreenA(),
      // home: Scaffold(
      //   backgroundColor: Colors.yellow,
      //   appBar: AppBar(
      //     backgroundColor: Colors.blue,
      //     title: Text(
      //       'First Screen',
      //       style: TextStyle(
      //         fontSize: 40,
      //         color: Colors.white,
      //         fontWeight: FontWeight.bold,
      //       ),
      //     ),
      //     centerTitle: true,
      //     leading: Icon(Icons.arrow_back, size: 30, color: Colors.white),
      //     actions: [
      //       Icon(Icons.notifications, size: 35),
      //       Icon(Icons.shopping_cart, size: 35),
      //       Icon(Icons.exit_to_app, size: 35),
      //     ],
      //   ),
      //   body: Column(
      //     crossAxisAlignment: CrossAxisAlignment.start,
      //     children: [
      //       Text("First Text", style: TextStyle(fontSize: 30)),
      //       SizedBox(height: 50),
      //       Text("Second Text", style: TextStyle(fontSize: 30)),
      //       SizedBox(height: 50),
      //       Row(
      //         mainAxisAlignment: MainAxisAlignment.spaceAround,
      //         children: [
      //           Icon(Icons.add),
      //           Column(
      //             children: [Icon(Icons.add), Icon(Icons.add), Icon(Icons.add)],
      //           ),
      //           Column(
      //             children: [
      //               Icon(Icons.add),
      //               Row(children: [Icon(Icons.add), Icon(Icons.add)]),
      //               Row(
      //                 children: [
      //                   Icon(Icons.add),
      //                   Icon(Icons.add),
      //                   Icon(Icons.add),
      //                 ],
      //               ),
      //               Row(children: [Icon(Icons.add), Icon(Icons.add)]),
      //               Icon(Icons.add),
      //             ],
      //           ),
      //           Icon(Icons.add),
      //         ],
      //       ),
      //     ],
      //   ),
      //   floatingActionButton: FloatingActionButton(
      //     onPressed: () {},
      //     child: Icon(Icons.add, color: Colors.white),
      //     backgroundColor: Colors.blue,
      //   ),
      // ),
    );
  }
}
