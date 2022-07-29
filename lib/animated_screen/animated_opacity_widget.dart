import 'package:flutter/material.dart';
import 'dart:math';

// TODO: using AnimatedOpacity widget animated version of Opacity widget

class AnimatedOpacityScreen extends StatefulWidget {
  const AnimatedOpacityScreen({Key? key}) : super(key: key);

  @override
  State<AnimatedOpacityScreen> createState() => _AnimatedOpacityScreenState();
}

class _AnimatedOpacityScreenState extends State<AnimatedOpacityScreen> {
  final Random random = Random();
  double _opacityValue = 1.0;
  Color _opacityColor = Colors.amber;

  void update() {
    setState((){
      _opacityValue == 1.0
          ? _opacityValue = 0.0
          : _opacityValue = 1.0;
      _opacityColor = Colors.primaries[random.nextInt(17)];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Animated Opacity')),
      floatingActionButton: FloatingActionButton(
        onPressed: () => update(),
        child: const Icon(Icons.change_circle_rounded),
      ),
      body: Center(
        child: Column(
          children: [
            // TODO: Without Animation
            Expanded(
              child: Center(
                child: Opacity(
                  opacity: _opacityValue,
                  child: Container(
                    height: 200,
                    width: 200,
                    color: _opacityColor,
                  ),
                ),
              ),
            ),

            const Divider(),

            // TODO: With Animation
            Expanded(
              child: Center(
                child: AnimatedOpacity(
                  opacity: _opacityValue,
                  duration: const Duration(milliseconds: 500),
                  child: Container(
                    height: 200,
                    width: 200,
                    color: _opacityColor,
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
