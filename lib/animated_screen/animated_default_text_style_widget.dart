import 'package:flutter/material.dart';

// TODO: using Animated Default TextStyle widget animated version of Default TextStyle widget

class AnimatedDefaultTextStyleScreen extends StatefulWidget {
  const AnimatedDefaultTextStyleScreen({Key? key}) : super(key: key);

  @override
  State<AnimatedDefaultTextStyleScreen> createState() =>
      _AnimatedDefaultTextStyleScreenState();
}

class _AnimatedDefaultTextStyleScreenState
    extends State<AnimatedDefaultTextStyleScreen> {
  double _fontSize = 20.0;
  Color _fontColor = Colors.blue.shade900;

  void changeStyle() {
    setState(() {
      _fontSize == 15 ? _fontSize = 25 : _fontSize = 15;
      _fontColor == Colors.red
          ? _fontColor = Colors.blue.shade900
          : _fontColor = Colors.red;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Animated Default TextStyle')),
      floatingActionButton: FloatingActionButton(
        onPressed: () => changeStyle(),
        child: const Icon(Icons.change_circle_rounded),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // TODO: Without Animation
            Expanded(
              child: Center(
                child: DefaultTextStyle(
                  style: TextStyle(
                    fontSize: _fontSize,
                    color: _fontColor,
                    fontWeight: FontWeight.bold,
                  ),
                  child: const Text('Default TextStyle Widget'),
                ),
              ),
            ),

            const Divider(),

            // TODO: With Animation
            Expanded(
              child: Center(
                child: AnimatedDefaultTextStyle(
                  style: TextStyle(
                    fontSize: _fontSize,
                    color: _fontColor,
                    fontWeight: FontWeight.bold,
                  ),
                  duration: const Duration(milliseconds: 500),
                  child: const Text('Animated Default TextStyle Widget'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
