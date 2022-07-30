import 'package:flutter/material.dart';

// TODO; using AnimatedSlide widget animated version of Transform.Translate

class AnimatedSlideScreen extends StatefulWidget {
  const AnimatedSlideScreen({Key? key}) : super(key: key);

  @override
  State<AnimatedSlideScreen> createState() => _AnimatedSlideScreenState();
}

class _AnimatedSlideScreenState extends State<AnimatedSlideScreen> {
  Offset _offsetWithAnimateValue = Offset.zero;
  Offset _offsetWithoutAnimateValue = Offset.zero;

  void slideUp() {
    setState(() {
      _offsetWithAnimateValue -= const Offset(0, 1);
      _offsetWithoutAnimateValue -= const Offset(0, 15);
    });
  }

  void slideDown() {
    setState(() {
      _offsetWithAnimateValue += const Offset(0, 1);
      _offsetWithoutAnimateValue += const Offset(0, 15);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Animated Slide')),
      body: Center(
        child: Column(
          children: [

            // TODO: Without Animation
            Expanded(
              child: Center(
                child: Transform.translate(
                  offset: _offsetWithoutAnimateValue,
                  child: const FlutterLogo(size: 50.0),
                ),
              ),
            ),

            const Divider(),

            // TODO: With Animation
            Expanded(
              child: Center(
                child: AnimatedSlide(
                  offset: _offsetWithAnimateValue,
                  duration: const Duration(milliseconds: 500),
                  curve: Curves.easeInOutQuart,
                  child: const FlutterLogo(size: 50.0),
                ),
              ),
            ),

            const Divider(),

            // TODO: Control Buttons
            Row(
              children: <Widget>[
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: ElevatedButton(
                      onPressed: () => slideUp(),
                      child: const Text('Slide Up'),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: ElevatedButton(
                      onPressed: () => slideDown(),
                      child: const Text('Slide Down'),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
