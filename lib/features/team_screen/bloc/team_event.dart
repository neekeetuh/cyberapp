part of 'team_bloc.dart';

sealed class TeamEvent extends Equatable {
  const TeamEvent();
}

final class LoadTeamDataEvent extends TeamEvent{
  final int id;

  const LoadTeamDataEvent({required this.id});

  @override
  List<Object?> get props => [id];
}