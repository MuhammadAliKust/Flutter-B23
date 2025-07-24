import 'package:flutter/material.dart';

class DropDownDemo extends StatefulWidget {
  DropDownDemo({super.key});

  @override
  State<DropDownDemo> createState() => _DropDownDemoState();
}

class _DropDownDemoState extends State<DropDownDemo> {
  List<String> languagesList = ["English", "Urdu", "Pashto", "Punjabi"];

  String? selectedLanguage;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Drop Down Demo")),
      body: Center(
        child: DropdownButton(
          items: languagesList
              .map(
                (language) =>
                    DropdownMenuItem(child: Text(language), value: language),
              )
              .toList(),
          value: selectedLanguage,
          isExpanded: true,
          hint: Text("Select Language"),
          onChanged: (val) {
            selectedLanguage = val;
            setState(() {});
          },
        ),
      ),
    );
  }
}
