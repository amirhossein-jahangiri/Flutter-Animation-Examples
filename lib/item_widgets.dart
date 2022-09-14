import 'package:flutter/material.dart';

class Items extends StatelessWidget {
  const Items({
    this.title,
    this.press,
    Key? key,
  }) : super(key: key);

  final String? title;
  final Function()? press;

  final TextStyle defaultTextStyle = const TextStyle(
    fontSize: 18.0,
    letterSpacing: 1.2,
  );

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: press,
      child: Text(title!, style: defaultTextStyle),
    );
  }
}