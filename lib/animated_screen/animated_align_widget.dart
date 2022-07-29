import 'package:flutter/material.dart';

// TODO: using AnimatedAlign widget animated version of Align widget

class AnimatedAlignScreen extends StatefulWidget {
  const AnimatedAlignScreen({Key? key}) : super(key: key);

  @override
  State<AnimatedAlignScreen> createState() => _AnimatedAlignScreenState();
}

class _AnimatedAlignScreenState extends State<AnimatedAlignScreen> {
  AlignmentGeometry _align = Alignment.center;

  void changeAlign() {
    setState(() {
      _align == Alignment.center
          ? _align = Alignment.bottomLeft
          : _align = Alignment.center;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Animated Align')),
      floatingActionButton: FloatingActionButton(
        onPressed: () => changeAlign(),
        child: const Icon(Icons.change_circle_rounded),
      ),
      body: Center(
        child: Column(
          children: [
            // TODO: Without Animation
            Expanded(
              child: Center(
                child: Align(
                  alignment: _align,
                  child: const FlutterLogo(
                    style: FlutterLogoStyle.stacked,
                    size: 150,
                  ),
                ),
              ),
            ),

            const Divider(),

            // TODO: With Animation
            Expanded(
              child: Center(
                child: AnimatedAlign(
                  alignment: _align,
                  duration: const Duration(milliseconds: 500),
                  curve: Curves.easeInCubic,
                  child: const FlutterLogo(
                    style: FlutterLogoStyle.stacked,
                    size: 150,
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
