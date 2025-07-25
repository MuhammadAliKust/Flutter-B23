import 'package:fltter_b23/providers/user.dart';
import 'package:fltter_b23/screen_b.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ScreenA extends StatelessWidget {
  const ScreenA({super.key});

  @override
  Widget build(BuildContext context) {
    var userProvider = Provider.of<UserProvider>(context);
    return Scaffold(
      appBar: AppBar(title: Text("Screen A")),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            userProvider.setName('Ali');
            userProvider.setEmail('test@gmail.com');
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ScreenB()),
            );
          },
          child: Text("Go to Screen B"),
        ),
      ),
    );
  }
}
