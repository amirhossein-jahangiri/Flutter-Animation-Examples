import 'package:flutter/material.dart';

import 'items_widget.dart';
import '/animated_screen/animated_container_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  _buildRoutingWithName(BuildContext context, Widget widgetName) {
    return Navigator.of(context).push(
      MaterialPageRoute(builder: (context) => widgetName),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Animation')),
      body: ListView(
        padding: const EdgeInsets.all(20.0),
        children: [
          Items(
            title: 'Animated Container',
            press: () => _buildRoutingWithName(
              context,
              const AnimatedContainerScreen(),
            ),
          ),

          Items(
            title: 'Animated Container',
            press: () => _buildRoutingWithName(
              context,
              const AnimatedContainerScreen(),
            ),
          ),

        ],
      ),
    );
  }
}

