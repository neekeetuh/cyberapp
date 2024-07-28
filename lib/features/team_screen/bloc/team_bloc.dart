import 'dart:async';
import 'package:cyberapp/repositories/teams/models/models.dart';
import 'package:cyberapp/repositories/teams/teams.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

part 'team_event.dart';
part 'team_state.dart';

class TeamBloc extends Bloc<TeamEvent, TeamState> {
  TeamBloc() : super(TeamInitial()) {
    on<LoadTeamDataEvent>(_onLoadTeamData);
  }

  FutureOr<void> _onLoadTeamData(LoadTeamDataEvent event, Emitter<TeamState> emit) {
    if(state is! TeamLoaded){
      emit(TeamLoading());
    }
    try {
      final Team team = TeamsRepository.teams.firstWhere((team)=> team.id == event.id);
      emit(TeamLoaded(team: team));
    } catch (error) {
      emit(TeamLoadingFailed(error: error));
    }
  }
}
