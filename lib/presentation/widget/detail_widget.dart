import 'package:flutter/material.dart';

class DetailWidget extends StatelessWidget {
  const DetailWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.network("https://m.media-amazon.com/images/M/MV5BNzlkNzVjMDMtOTdhZC00MGE1LTkxODctMzFmMjkwZmMxZjFhXkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_SX300.jpg"),
            Text("The Fast and the Furious"),
            Text("Year: 2001"),
            Text("Runtime: 106 min"),
            Text("Genre: Action, Crime, Thriller"),
            Text("Director: Rob Cohen"),
          ],
        ),
      ),
    );
  }
}
