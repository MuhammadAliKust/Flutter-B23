import 'package:flutter/material.dart';

class MultipleSelectionDemo extends StatefulWidget {
  MultipleSelectionDemo({super.key});

  @override
  State<MultipleSelectionDemo> createState() => _MultipleSelectionDemoState();
}

class _MultipleSelectionDemoState extends State<MultipleSelectionDemo> {
  List<int> selectedIndex = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Multiple Selection Demo")),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, i) {
          return Column(
            children: [
              Image.asset('assets/images/Group.png', height: 100),
              Text("Title"),
              Text("Description"),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  IconButton(
                    onPressed: () {
                      if (selectedIndex.contains(i)) {
                        selectedIndex.remove(i);
                      } else {
                        selectedIndex.add(i);
                      }
                      setState(() {});
                    },
                    icon: Icon(
                      Icons.favorite,
                      color: selectedIndex.contains(i)
                          ? Colors.red
                          : Colors.grey,
                    ),
                  ),
                  Icon(Icons.add),
                  Icon(Icons.add),
                  Icon(Icons.add),
                ],
              ),
            ],
          );
        },
      ),
    );
  }
}
