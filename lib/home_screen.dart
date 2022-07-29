import 'package:flutter/material.dart';

import 'items_widget.dart';
import '/animated_screen/animated_container_widget.dart';
import '/animated_screen/animated_opacity_widget.dart';
import '/animated_screen/animated_hero_widget.dart';
import '/animated_screen/animated_align_widget.dart';
import '/animated_screen/animated_default_text_style_widget.dart';

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
            title: 'Animated Opacity',
            press: () => _buildRoutingWithName(
              context,
              const AnimatedOpacityScreen(),
            ),
          ),

          Items(
            title: 'Animated Hero',
            press: () => _buildRoutingWithName(
              context,
              const AnimatedHeroScreen(),
            ),
          ),

          Items(
            title: 'Animated Align',
            press: () => _buildRoutingWithName(
              context,
              const AnimatedAlignScreen(),
            ),
          ),

          Items(
            title: 'Animated Default TextStyle',
            press: () => _buildRoutingWithName(
              context,
              const AnimatedDefaultTextStyleScreen(),
            ),
          ),



        ],
      ),
    );
  }
}

