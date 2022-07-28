import 'package:flutter/material.dart';
import 'dart:math';

// TODO: using AnimatedContainer widget

class AnimatedContainerScreen extends StatefulWidget {
  const AnimatedContainerScreen({Key? key}) : super(key: key);

  @override
  State<AnimatedContainerScreen> createState() =>
      _AnimatedContainerScreenState();
}

class _AnimatedContainerScreenState extends State<AnimatedContainerScreen> {
  double _animatedHeight = 300;
  double _animatedWidth = 300;
  Color _changeColor = const Color(0xFFFFB300);
  double _circularRadius = 0.0;
  final Random random = Random();

  void updateContainerSize() {
    setState((){
      _animatedHeight = random.nextDouble() * 500;
      _animatedWidth = random.nextDouble() * 500;
      _changeColor = Colors.primaries[random.nextInt(17)];
      _circularRadius = random.nextDouble() * 50;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Animated Container')),
      floatingActionButton: FloatingActionButton(
        onPressed: () => updateContainerSize(),
        child: const Icon(Icons.change_circle_rounded),
      ),
      body: Center(
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 400),
          height: _animatedHeight,
          width: _animatedWidth,
          decoration: BoxDecoration(
            color: _changeColor,
            borderRadius: BorderRadius.circular(_circularRadius),
          ),
        ),
      ),
    );
  }
}