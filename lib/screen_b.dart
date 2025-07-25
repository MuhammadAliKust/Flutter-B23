import 'package:fltter_b23/providers/user.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ScreenB extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var userProvider = Provider.of<UserProvider>(context);
    return Scaffold(
      appBar: AppBar(
        leading: SizedBox(),
        leadingWidth: 0,
        title: Text("Screen B"),
      ),
      body: Column(
        children: [
          Text(userProvider.getName(), style: TextStyle(fontSize: 40)),
          // Text(email, style: TextStyle(fontSize: 40)),
          Text(userProvider.getEmail().toString(), style: TextStyle(fontSize: 40)),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("Go back to Screen A"),
            ),
          ),
        ],
      ),
    );
  }
}
