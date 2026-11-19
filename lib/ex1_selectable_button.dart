// EX 1 – The selectable button (handout page: EX 1). Start code from the handout.

import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Custom buttons"),
        ),
        body: Center(
          child: Column(
            spacing: 10,
            children: [
              CustomButton(),
              CustomButton(),
              CustomButton(),
            ],
          ),
        ),
      ),
    ));

class CustomButton extends StatefulWidget {
  const CustomButton({
    super.key,
  });

  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  bool isSelected = false;

  String get textLabel => isSelected ? "Selected" : "Not Selected";
  Color get textColor => isSelected ? Colors.white : Colors.black;
  Color get btnBackgroundColor => isSelected ? Colors.blue.shade500 : Colors.blue.shade50;

  void onClicked() {
    setState(() {
      isSelected = !isSelected;
    });
  }

  @override
  Widget build(BuildContext context) {
    final ButtonStyle style = ElevatedButton.styleFrom(
      backgroundColor: btnBackgroundColor
    );

    return SizedBox(
      width: 400,
      height: 100,
      child: ElevatedButton(
          style: style,
          onPressed: onClicked,
          child: Center(
            child: Text(textLabel, style: TextStyle(color: textColor)),
          )),
    );
  }
}