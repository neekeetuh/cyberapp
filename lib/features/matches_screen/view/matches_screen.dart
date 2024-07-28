import 'package:auto_route/auto_route.dart';
import 'package:cyberapp/features/matches_screen/bloc/matches_list_bloc.dart';
import 'package:cyberapp/features/matches_screen/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class FakeMatchesScreen extends StatelessWidget {
  const FakeMatchesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    BlocProvider.of<MatchesListBloc>(context).add(
        LoadMatchesListEvent());
    return RefreshIndicator(
      onRefresh: () async {},
      child: CustomScrollView(
        slivers: [
          BlocBuilder<MatchesListBloc, MatchesListState>(
            builder: (context, state) {
              if (state is MatchesListLoaded) {
                final matches = state.matchesList;
                return SliverToBoxAdapter(
                  child: Container(
                    margin: const EdgeInsets.all(7),
                    height: 70,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: matches.length,
                      itemBuilder: (context, index) {
                        var match = matches[index];
                        return Padding(
                          padding: const EdgeInsets.all(7),
                          child: MatchMiniCard(
                            match: match,
                          ),
                        );
                      },
                    ),
                  ),
                );
              }
              if(state is MatchesListLoadingFailed){
                return Text(state.error.toString());
              }
              return const SliverFillRemaining(
                child: Text('Матчи не найдены'),);
            },
          ),
          BlocBuilder<MatchesListBloc, MatchesListState>(
            builder: (context, state) {
              if(state is MatchesListLoaded){
                final matches = state.matchesList;
                return SliverList.builder(
                  itemCount: matches.length,
                  itemBuilder: (context, index) {
                    var match = matches[index];
                    return MatchCard(match: match);
                  },
                );
              }
              return const SliverFillRemaining(child: CircularProgressIndicator(),);
            },
          )
        ],
      ),
    );
  }
}
