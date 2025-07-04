import 'package:flutter/material.dart';

class ListViewDemo extends StatelessWidget {
  const ListViewDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("List View Demo")),
      body: Container(
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/1.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, i) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                elevation: 10,
                color: Colors.blue,
                child: ListTile(
                  leading: Icon(Icons.notifications),
                  title: Text("Notification Title"),
                  subtitle: Text("Notification Sub Title"),
                  trailing: Icon(Icons.arrow_forward),
                  // tileColor: Colors.blue,
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
