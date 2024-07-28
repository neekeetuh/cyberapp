import 'package:cyberapp/features/match_detail_screen/bloc/match_detail_bloc.dart';
import 'package:cyberapp/features/matches/data/matches_repository.dart';
import 'package:cyberapp/features/matches/domain/domain.dart';
import 'package:cyberapp/features/matches_screen/bloc/matches_list_bloc.dart';
import 'package:cyberapp/features/player_screen/bloc/player_bloc.dart';
import 'package:cyberapp/features/team_screen/bloc/team_bloc.dart';
import 'package:cyberapp/router/router.dart';
import 'package:cyberapp/ui/ui.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

Future<void> main() async {
  // final apiClient = VlrApiClient(dio: Dio());
  // apiClient.getRankingTeamsListFromApi(('eu')).then((value) => print(value[0]));
  // final matchesRepo = MatchesRepository(dio:Dio());
  // matchesRepo.fetchMatches('results').then((value) => print(value));
  runApp(const ProviderScope(child: CyberApp()));
}

class CyberApp extends StatefulWidget {
  const CyberApp({super.key});

  @override
  State<CyberApp> createState() => _CyberAppState();
}

class _CyberAppState extends State<CyberApp> {
  final _router = AppRouter();

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
      ],
      child: MaterialApp.router(
        title: 'CyberApp',
        theme: mainTheme,
        routerConfig: _router.config(),
      ),
    );
  }
}
