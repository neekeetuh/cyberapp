import 'package:auto_route/auto_route.dart';
import 'package:cyberapp/features/matches_screen/widgets/widgets.dart';
import 'package:cyberapp/features/team_screen/bloc/team_bloc.dart';
import 'package:cyberapp/features/team_screen/widgets/widgets.dart';
import 'package:cyberapp/repositories/teams/models/models.dart';
import 'package:cyberapp/ui/ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class TeamScreen extends StatelessWidget {
  final Team team;

  const TeamScreen({super.key, required this.team});

  @override
  Widget build(BuildContext context) {
    BlocProvider.of<TeamBloc>(context).add(LoadTeamDataEvent(id: team.id));
    return RefreshIndicator(
      onRefresh: () async {
        BlocProvider.of<TeamBloc>(context).add(LoadTeamDataEvent(id: team.id));
      },
      child: BlocBuilder<TeamBloc, TeamState>(
        builder: (context, state) {
          if (state is TeamLoaded) {
            final Team team = state.team;
            return Scaffold(
              appBar: AppBar(
                title: Text(team.title),
              ),
              body: ListView(
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(
                        vertical: 20, horizontal: 40),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        ImageTemplate(
                          image: AssetImage(team.logoUrl),
                          height: 50,
                          width: 50,
                        ),
                        Text(
                          team.title,
                          style: const TextStyle(fontSize: 24),
                        ),
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      const Text(
                        'Состав',
                        style: TextStyle(fontSize: 24),
                      ),
                      TeamRosterCard(team: team),
                    ],
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Column(children: [
                      const Text(
                        'Последние матчи',
                        style: TextStyle(fontSize: 24),
                      ),
                      ...team.getMatchesHistory.map((match) => MatchCard(
                            match: match,
                          ))
                    ]),
                  )
                ],
              ),
            );
          }
          if (state is TeamLoadingFailed) {
            return Scaffold(
              appBar: AppBar(title: Text(state.error.toString())),
              body: Center(
                child: Text(state.error.toString()),
              ),
            );
          }
          return Scaffold(
            appBar: AppBar(),
            body: const Center(
              child: CircularProgressIndicator(),
            ),
          );
        },
      ),
    );
  }
}
