import 'package:flutter/material.dart';

import '../../colors.dart';

class CardMovieTitleWidget extends StatelessWidget {
  String movieTitle;

  CardMovieTitleWidget({super.key, required this.movieTitle});

  @override
  Widget build(BuildContext context) {
    return Text(
      movieTitle,
      style: TextStyle(
        color: secondColor,
        fontSize: 25,
      ),
      softWrap: true,
      textAlign: TextAlign.center,
      maxLines: 5,
      overflow: TextOverflow.ellipsis,
    );
  }
}
