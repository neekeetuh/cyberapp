import 'package:auto_route/auto_route.dart';
import 'package:cyberapp/features/player_screen/bloc/player_bloc.dart';
import 'package:cyberapp/features/player_screen/widgets/widgets.dart';
import 'package:cyberapp/repositories/players/models/models.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class PlayerScreen extends StatelessWidget {
  final Player player;

  const PlayerScreen({super.key, required this.player});

  @override
  Widget build(BuildContext context) {
    BlocProvider.of<PlayerBloc>(context).add(LoadPlayerData(id: player.id));
    return RefreshIndicator(
      onRefresh: () async {
        BlocProvider.of<PlayerBloc>(context).add(LoadPlayerData(id: player.id));
      },
      child: BlocBuilder<PlayerBloc, PlayerState>(
        builder: (context, state) {
          if (state is PlayerLoaded) {
            final Player player = state.player;
            return Scaffold(
              appBar: AppBar(
                title: Text(player.nickname),
              ),
              body: ListView(
                children: [
                  PlayerHeader(player: player),
                ],
              ),
            );
          }
          if (state is PlayerLoadingFailed) {
            return Scaffold(
              appBar: AppBar(
                title: Text(state.error.toString()),
              ),
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
