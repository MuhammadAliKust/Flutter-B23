import 'package:fltter_b23/models/notification.dart';
import 'package:flutter/material.dart';

class ListViewDemo extends StatelessWidget {
  ListViewDemo({super.key});

  List<NotificationModel> myList = [
    NotificationModel(
      title: 'First Notification',
      description: 'First Description',
      time: '11:45',
    ),
    NotificationModel(
      title: 'Second Notification',
      description: 'Second Description',
      time: '1:45',
    ),
    NotificationModel(title: 'Third Notification', description: 'Third Description', time: '12:45'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("List View Demo")),
      body: Container(
        height: MediaQuery.of(context).size.height,
        // decoration: BoxDecoration(
        //   image: DecorationImage(
        //     image: AssetImage('assets/images/1.jpg'),
        //     fit: BoxFit.cover,
        //   ),
        // ),
        child: ListView.builder(
          itemCount: myList.length,
          itemBuilder: (context, i) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                color: Colors.blue,
                child: ListTile(
                  leading: Icon(Icons.notifications),
                  title: Text(myList[i].title),
                  subtitle: Text(myList[i].description),
                  trailing: Text(myList[i].time),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
