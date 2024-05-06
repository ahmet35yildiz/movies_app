import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies_app/injector.dart';
import 'package:movies_app/presentation/bloc/detail_bloc.dart';

import '../widget/detail_widget.dart';

@RoutePage()
class DetailPage extends StatelessWidget {
  const DetailPage({super.key, this.imdbId});
  final String? imdbId;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          injector<DetailBloc>()..add(GetMovieDetailEvent(imdbId: imdbId)),
      child: const _Body(),
    );
  }
}

class _Body extends StatelessWidget {
  const _Body();

  @override
  Widget build(BuildContext context) {
    return const DetailWidget();
  }
}
