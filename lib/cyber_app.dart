import 'package:cyberapp/features/discussions/bloc/discussions_bloc.dart';
import 'package:cyberapp/features/discussions/data/data.dart';
import 'package:cyberapp/router/router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:cyberapp/ui/ui.dart';
import 'package:get_it/get_it.dart';

class CyberApp extends StatelessWidget {
  final AppRouter router;

  const CyberApp({super.key, required this.router});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              DiscussionsBloc(GetIt.I<DiscussionsRepository>()),
        ),
      ],
      child: MaterialApp.router(
        title: 'CyberApp',
        theme: mainTheme,
        routerConfig: router.config(),
      ),
    );
  }
}
