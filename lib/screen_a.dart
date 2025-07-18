import 'package:fltter_b23/screen_b.dart';
import 'package:flutter/material.dart';

class ScreenA extends StatelessWidget {
  const ScreenA({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Screen A")),
      body: Center(
        child: ElevatedButton(
          onPressed: () {

            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ScreenB(
                name: 'Ali',
                email: 'test@gmail.com',
              )),
            );
          },
          child: Text("Go to Screen B"),
        ),
      ),
    );
  }
}
