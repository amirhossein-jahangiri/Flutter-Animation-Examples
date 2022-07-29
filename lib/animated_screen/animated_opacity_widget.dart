import 'package:flutter/material.dart';

// TODO: using AnimatedOpacity widget animated version of Opacity widget

class AnimatedOpacityScreen extends StatefulWidget {
  const AnimatedOpacityScreen({Key? key}) : super(key: key);

  @override
  State<AnimatedOpacityScreen> createState() => _AnimatedOpacityScreenState();
}

class _AnimatedOpacityScreenState extends State<AnimatedOpacityScreen> {
  double _opacityValue = 1.0;

  void update() {
    setState((){
      _opacityValue == 1.0
          ? _opacityValue = 0.0
          : _opacityValue = 1.0;
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
        child: AnimatedOpacity(
          opacity: _opacityValue,
          duration: const Duration(milliseconds: 2000),
          child: Container(
            height: 200,
            width: 200,
            color: Colors.amber,
          ),
        ),
      ),
    );
  }
}
