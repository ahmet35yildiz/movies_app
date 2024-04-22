import 'package:flutter/material.dart';

class DetailMovieLanguageWidget extends StatelessWidget {
  String movieLanguage;
  DetailMovieLanguageWidget({super.key, required this.movieLanguage});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          "Language: ",
          style: TextStyle(
              fontSize: 24, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        Text(
          movieLanguage,
          style: const TextStyle(
            fontSize: 24,
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
