import 'package:flutter/material.dart';

class AssetImageDemo extends StatelessWidget {
  const AssetImageDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Asset Image"),
      ),
      body: Column(
        children: [
          Image.asset('assets/images/1.jpg',
          height: 200,
          width: 300,
          fit: BoxFit.fill,),
        ],
      ),
    );
  }
}
