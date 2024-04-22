import 'package:flutter/material.dart';

import '../../colors.dart';

class CardMovieTypeWidget extends StatelessWidget {
  String movieType;

  CardMovieTypeWidget({super.key, required this.movieType});

  @override
  Widget build(BuildContext context) {
    return Text(
      movieType,
      style: TextStyle(
        color: secondColor,
        fontSize: 20,
      ),
      textAlign: TextAlign.center,
    );
  }
}
