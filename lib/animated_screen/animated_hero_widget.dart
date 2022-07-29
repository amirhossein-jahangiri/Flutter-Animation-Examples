import 'package:flutter/material.dart';

// TODO: using Hero widget

class AnimatedHeroScreen extends StatelessWidget {
  const AnimatedHeroScreen({Key? key}) : super(key: key);

  Future<dynamic> _buildRouting(BuildContext context, Widget widgetName) {
    return Navigator.of(context).push(
      MaterialPageRoute(builder: (context) => widgetName),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Animated Hero')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Click to Next Page button to show animated hero widget',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            const SizedBox(height: 20),
            Hero(
              tag: 'hero widget',
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15.0),
                child: Image.asset(
                  'assets/images/animated_hero_image.png',
                  width: 200,
                ),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => _buildRouting(
                context,
                const AnimatedHeroSecondScreenWithAnimation(),
              ),
              child: const Text('With Animation'),
            ),
            ElevatedButton(
              onPressed: () => _buildRouting(
                context,
                const AnimatedHeroSecondScreenWithoutAnimation(),
              ),
              child: const Text('Without Animation'),
            ),
          ],
        ),
      ),
    );
  }
}
// TODO: this widget for second screen and display hero animation for image
class AnimatedHeroSecondScreenWithAnimation extends StatelessWidget {
  const AnimatedHeroSecondScreenWithAnimation({Key? key}) : super(key: key);

  static const String _sampleText =
      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Animated Hero Second Screen')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Hero(
              tag: 'hero widget',
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15.0),
                child: Image.asset(
                  'assets/images/animated_hero_image.png',
                  width: 400,
                ),
              ),
            ),
            const SizedBox(height: 20),
            Text(
              _sampleText,
              style: Theme.of(context).textTheme.bodyMedium,
              textAlign: TextAlign.justify,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Back'),
            ),
          ],
        ),
      ),
    );
  }
}


// TODO: this widget for second screen and do not have hero animation for image
class AnimatedHeroSecondScreenWithoutAnimation extends StatelessWidget {
  const AnimatedHeroSecondScreenWithoutAnimation({Key? key}) : super(key: key);
  static const String _sampleText =
      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Animated Hero Second Screen')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.circular(15.0),
              child: Image.asset(
                'assets/images/animated_hero_image.png',
                width: 400,
              ),
            ),
            const SizedBox(height: 20),
            Text(
              _sampleText,
              style: Theme.of(context).textTheme.bodyMedium,
              textAlign: TextAlign.justify,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Back'),
            ),
          ],
        ),
      ),
    );
  }
}
