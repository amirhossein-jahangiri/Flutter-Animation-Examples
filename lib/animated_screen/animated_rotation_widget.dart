import 'package:flutter/material.dart';
import 'dart:math';

// TODO: using AnimatedRotation widget animated version of Transform.Rotate

class AnimatedRotationScreen extends StatefulWidget {
  const AnimatedRotationScreen({Key? key}) : super(key: key);

  @override
  State<AnimatedRotationScreen> createState() => _AnimatedRotationScreenState();
}

class _AnimatedRotationScreenState extends State<AnimatedRotationScreen> {
  final Random random = Random();

  double _turns = 0.0;
  double _angle = 0.0;
  Color _color = Colors.blue;

  void updateTurnsValue() {
    setState((){
      _turns += 0.125;
      _angle += 0.75;
      _color = Colors.primaries[random.nextInt(17)];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Animated Rotation')),
      floatingActionButton: FloatingActionButton(
        onPressed: () => updateTurnsValue(),
        child: const Icon(Icons.change_circle_rounded),
      ),
      body: Center(
        child: Column(
          children: [

            // TODO: Without Animation
            Expanded(
              child: Center(
                child: Transform.rotate(
                  angle: _angle,
                  child: Container(
                    height: 150,
                    width: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.0),
                      color: _color,
                    ),
                  ),
                ),
              ),
            ),

            const Divider(),

            // TODO: With Animation
            Expanded(
              child: Center(
                child: AnimatedRotation(
                  turns: _turns,
                  duration: const Duration(milliseconds: 500),
                  curve: Curves.linearToEaseOut,
                  child: Container(
                    height: 150,
                    width: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.0),
                      color: _color,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
