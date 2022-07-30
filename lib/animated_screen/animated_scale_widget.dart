import 'package:flutter/material.dart';

// TODO: using AnimatedScale widget animated version of Transform.Scale widget

class AnimatedScaleScreen extends StatefulWidget {
  const AnimatedScaleScreen({Key? key}) : super(key: key);

  @override
  State<AnimatedScaleScreen> createState() => _AnimatedScaleScreenState();
}

class _AnimatedScaleScreenState extends State<AnimatedScaleScreen> {
  double _scale = 5.0;

  void updateScaleValue() {
    setState((){
      _scale == 5.0
          ? _scale = 2.0
          : _scale = 5.0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Animated Scale')),
      floatingActionButton: FloatingActionButton(
        onPressed: () => updateScaleValue(),
        child: const Icon(Icons.change_circle_rounded),
      ),
      body: Center(
        child: Column(
          children: <Widget>[

            // TODO: Without Animation
            Expanded(
              child: Center(
                child: Transform.scale(
                  scale: _scale,
                  child: const FlutterLogo(
                    curve: Curves.easeInCubic,
                  ),
                ),
              ),
            ),

            const Divider(),

            // TODO: With Animation
            Expanded(
              child: Center(
                child: AnimatedScale(
                  scale: _scale,
                  duration: const Duration(milliseconds: 500),
                  child: const FlutterLogo(
                    curve: Curves.easeInCubic,
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
