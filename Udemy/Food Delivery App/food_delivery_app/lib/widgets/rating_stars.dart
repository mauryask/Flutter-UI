import 'package:flutter/material.dart';

class RatingStars extends StatelessWidget {
  final int rating;
  const RatingStars({Key? key, required this.rating}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String stars = '⭐ ' * rating; // it will repeat star rating times
    stars.trim();
    return Text(
      stars,
      style: const TextStyle(
        fontSize: 18.0,
      ),
    );
  }
}
