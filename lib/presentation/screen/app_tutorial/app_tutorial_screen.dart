import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SlideInfo {
  final String title;
  final String caption;
  final String imgeURL;

  SlideInfo(this.title, this.caption, this.imgeURL);
}

final slides = <SlideInfo>[
  SlideInfo(
      'Busca la comida',
      'Ullamco elit aliquip eiusmod quis minim nisi nostrud pariatur nisi excepteur laboris veniam elit enim.',
      'assets/Images/1.png'),
  SlideInfo(
      'Entrega rapida',
      'Incididunt ipsum nisi sunt duis reprehenderit Lorem incididunt labore cupidatat nostrud laborum eu magna.',
      'assets/Images/2.png'),
  SlideInfo(
      'Disfruta la comida',
      'Irure magna nulla ad ut tempor dolore reprehenderit.',
      'assets/Images/3.png'),
];

class AppTutorialScreen extends StatelessWidget {
  static const String name = 'tutorial_screen';

  const AppTutorialScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          PageView(
            physics: const BouncingScrollPhysics(),
            children: slides
                .map((slideData) => _Slide(
                      title: slideData.title,
                      caption: slideData.caption,
                      imageUrl: slideData.imgeURL,
                    ))
                .toList(),
          ),
          Positioned(
              right: 20,
              top: 50,
              child: TextButton(
                  child: const Text('Salir'), onPressed: () => context.pop()))
        ],
      ),
    );
  }
}

class _Slide extends StatelessWidget {
  final String title;
  final String caption;
  final String imageUrl;

  const _Slide(
      {required this.title, required this.caption, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    final titleStyle = Theme.of(context).textTheme.titleLarge;
    final captionStyle = Theme.of(context).textTheme.bodySmall;

    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image(image: AssetImage(imageUrl)),
            const SizedBox(
              height: 20,
            ),
            Text(
              title,
              style: titleStyle,
            ),
            const SizedBox(height: 10),
            Text(
              caption,
              style: captionStyle,
            )
          ],
        )));
  }
}
