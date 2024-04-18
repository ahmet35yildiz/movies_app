import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies_app/colors.dart';
import 'package:movies_app/presentation/bloc/detail_bloc.dart';

import '../widget/detail_widget.dart';


@RoutePage()
class DetailPage extends StatelessWidget {
  final String? imdbId;

  const DetailPage({super.key, this.imdbId});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => DetailBloc()..add(GetMovieDetailEvent(imdbId: imdbId)),
        child: _Body(),
    );
  }
}

class _Body extends StatelessWidget {
  const _Body({super.key});

  @override
  Widget build(BuildContext context) {
    return const DetailWidget();
  }
}
