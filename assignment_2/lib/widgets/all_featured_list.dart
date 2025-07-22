import 'package:flutter/material.dart';

class AllFeaturedList extends StatelessWidget {
  final String text;
  final String assetPath;
  const AllFeaturedList({
    super.key,
    required this.text,
    required this.assetPath,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(radius: 30.0, backgroundImage: AssetImage(assetPath)),
        SizedBox(height: 2),
        Text(text),
      ],
    );
  }
}
