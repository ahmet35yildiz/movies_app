import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:movies_app/colors.dart';

import '../widget/detail_widget.dart';

@RoutePage()
class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: backgroundColor,
        title: const Text('Detail Page'),
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(child: DetailWidget())
          ]
        )
      ),
    );
  }
}
