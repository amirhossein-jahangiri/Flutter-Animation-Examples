import 'package:flutter/material.dart';
import 'dart:math';

// TODO: using Animated Physical Model widget animated version of Physical Model widget

class AnimatedPhysicalModelScreen extends StatefulWidget {
  const AnimatedPhysicalModelScreen({Key? key}) : super(key: key);

  @override
  State<AnimatedPhysicalModelScreen> createState() => _AnimatedPhysicalModelScreenState();
}

class _AnimatedPhysicalModelScreenState extends State<AnimatedPhysicalModelScreen> {
  final Random random = Random();

  double _elevation = 0.0;
  Color _color = Colors.blue;

  void updateElevationValue() {
    setState(() {
      _elevation == 0.0
          ? _elevation = 30.0
          : _elevation = 0.0;
      _color = Colors.primaries[random.nextInt(17)];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Animated Physical Model')),
      floatingActionButton: FloatingActionButton(
        onPressed: () => updateElevationValue(),
        child: const Icon(Icons.change_circle_rounded),
      ),
      body: Center(
        child: Column(
          children: [

            // TODO: Without Animation
            Expanded(
              child: Center(
                child: PhysicalModel(
                  color: Colors.transparent,
                  shadowColor: Colors.black,
                  elevation: _elevation,
                  borderRadius: BorderRadius.circular(15.0),
                  child: ChildWidget(color: _color),
                ),
              ),
            ),

            const Divider(),

            // TODO: With Animation
            Expanded(
              child: Center(
                child: AnimatedPhysicalModel(
                  color: Colors.transparent,
                  shadowColor: Colors.black,
                  elevation: _elevation,
                  borderRadius: BorderRadius.circular(15.0),
                  shape: BoxShape.rectangle,
                  duration: const Duration(milliseconds: 500),
                  child: ChildWidget(color: _color),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ChildWidget extends StatelessWidget {
  const ChildWidget({this.color, Key? key}) : super(key: key);
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.0),
        color: color
      ),
    );
  }
}
