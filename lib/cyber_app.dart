import 'package:cyberapp/features/discussions/bloc/discussions_bloc.dart';
import 'package:cyberapp/features/discussions/data/data.dart';
import 'package:cyberapp/router/router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:cyberapp/features/match_detail_screen/bloc/match_detail_bloc.dart';
import 'package:cyberapp/features/matches_screen/bloc/matches_list_bloc.dart';
import 'package:cyberapp/features/player_screen/bloc/player_bloc.dart';
import 'package:cyberapp/features/team_screen/bloc/team_bloc.dart';
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
          create: (context) => MatchesListBloc(),
        ),
        BlocProvider(
          create: (context) => MatchDetailBloc(),
        ),
        BlocProvider(
          create: (context) => PlayerBloc(),
        ),
        BlocProvider(
          create: (context) => TeamBloc(),
        ),
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
