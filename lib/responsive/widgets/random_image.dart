import 'package:flutter/material.dart';

class RandomImage extends StatelessWidget {
  const RandomImage({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: Image.network(
        'https://picsum.photos/200',
        fit: BoxFit.cover,
        errorBuilder:
            (BuildContext context, Object error, StackTrace? stackTrace) {
          return Image.asset(
            'assets/img/default_profile_image.png',
            fit: BoxFit.cover,
            width: 100.0,
            height: 100.0,
          );
        },
      ),
    );
  }
}
