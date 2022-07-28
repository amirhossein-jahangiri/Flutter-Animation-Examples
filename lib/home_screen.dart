import 'package:flutter/material.dart';
import 'package:learn_animation/animated_screen/animated_container.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  final TextStyle defaultTextStyle = const TextStyle(
    fontSize: 18.0,
    fontWeight: FontWeight.bold,
    letterSpacing: 1.2,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Animation')),
      body: ListView(
        padding: const EdgeInsets.all(20.0),
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const AnimatedContainerScreen(),
                ),
              );
            },
            child: Text('Animated Container', style: defaultTextStyle),
          ),
        ],
      ),
    );
  }
}
