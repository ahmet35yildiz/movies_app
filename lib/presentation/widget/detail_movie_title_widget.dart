import 'package:flutter/material.dart';

class DetailMovieTitleWidget extends StatelessWidget {
  String movieTitle;
  DetailMovieTitleWidget({super.key, required this.movieTitle});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          "Name: ",
          style: TextStyle(
              fontSize: 24, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        Text(
          movieTitle,
          style: const TextStyle(
            fontSize: 24,
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
