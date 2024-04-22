import 'package:flutter/material.dart';

import '../../colors.dart';

class CardMovieYearWidget extends StatelessWidget {
  String movieYear;

  CardMovieYearWidget({super.key, required this.movieYear});

  @override
  Widget build(BuildContext context) {
    return Text(
      movieYear,
      style: TextStyle(
        color: secondColor,
        fontSize: 20,
      ),
      textAlign: TextAlign.center,
    );
  }
}
