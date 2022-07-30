import 'package:flutter/material.dart';
import 'dart:math';

class AnimatedPaddingScreen extends StatefulWidget {
  const AnimatedPaddingScreen({Key? key}) : super(key: key);

  @override
  State<AnimatedPaddingScreen> createState() => _AnimatedPaddingScreenState();
}

class _AnimatedPaddingScreenState extends State<AnimatedPaddingScreen> {
  final Random random = Random();

  EdgeInsetsGeometry _padding = EdgeInsets.zero;
  Color _color = Colors.blue;
  void updatePaddingValue() {
    setState(() {
        _padding == EdgeInsets.zero
            ? _padding = const EdgeInsets.all(100)
            : _padding = EdgeInsets.zero;
        _color = Colors.primaries[random.nextInt(17)];
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Animated Padding')),
      floatingActionButton: FloatingActionButton(
        onPressed: () => updatePaddingValue(),
        child: const Icon(Icons.change_circle_rounded),
      ),
      body: Center(
        child: Column(
          children: [

            // TODO: Without Animation
            Expanded(
              child: Center(
                child: Padding(
                  padding: _padding,
                  child: Container(
                    height: 250,
                    width: double.infinity,
                    color: _color,
                  ),
                ),
              ),
            ),

            const Divider(),

            // TODO: With Animation
            Expanded(
              child: Center(
                child: AnimatedPadding(
                  padding: _padding,
                  duration: const Duration(milliseconds: 500),
                  curve: Curves.easeInOutQuart,
                  child: Container(
                    height: 250,
                    width: double.infinity,
                    color: _color,
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
