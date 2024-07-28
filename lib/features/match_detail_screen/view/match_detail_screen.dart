import 'package:auto_route/auto_route.dart';
import 'package:cyberapp/features/match_detail_screen/bloc/match_detail_bloc.dart';
import 'package:cyberapp/features/match_detail_screen/widgets/widgets.dart';
import 'package:cyberapp/repositories/matches/models/models.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class MatchDetailScreen extends StatelessWidget {
  final FakeMatchData match;

  const MatchDetailScreen({super.key, required this.match});

  @override
  Widget build(BuildContext context) {
    BlocProvider.of<MatchDetailBloc>(context)
        .add(LoadMatchDetailEvent(id: match.id));
    return RefreshIndicator(
      onRefresh: () async {
        BlocProvider.of<MatchDetailBloc>(context)
            .add(LoadMatchDetailEvent(id: match.id));
      },
      child: BlocBuilder<MatchDetailBloc, MatchDetailState>(
          builder: (context, state) {
        if (state is MatchDetailLoaded) {
          final FakeMatchData match = state.match;
          final teamOne = match.teams[0];
          final teamTwo = match.teams[1];
          return Scaffold(
            appBar: AppBar(
              title: Text('${teamOne.title} - ${teamTwo.title}'),
            ),
            body: ListView(
              children: [
                MatchHeader(match: match),
                const Padding(
                  padding: EdgeInsets.only(bottom: 10),
                  child: Text(
                    'Статистика',
                    style: TextStyle(fontSize: 24),
                    textAlign: TextAlign.center,
                  ),
                ),
                TeamScoreboard(team: teamOne, match: match),
                TeamScoreboard(team: teamTwo, match: match),
              ],
            ),
          );
        }
        if (state is MatchDetailLoadingFailed) {
          return Scaffold(
              appBar: AppBar(
                title: Text(state.error.toString()),
              ),
              body: Center(child: Text(state.error.toString())));
        }
        return Scaffold(
            appBar: AppBar(),
            body: const Center(
              child: CircularProgressIndicator(),
            ));
      }),
    );
  }
}
