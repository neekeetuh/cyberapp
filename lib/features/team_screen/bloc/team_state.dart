part of 'team_bloc.dart';

sealed class TeamState extends Equatable {
  const TeamState();
}

final class TeamInitial extends TeamState {
  @override
  List<Object> get props => [];
}

final class TeamLoading extends TeamState {
  @override
  List<Object?> get props => [];
}

final class TeamLoaded extends TeamState {
  final Team team;

  const TeamLoaded({required this.team});

  @override
  List<Object?> get props => [team];
}

final class TeamLoadingFailed extends TeamState {
  final Object? error;

  const TeamLoadingFailed({this.error});

  @override
  List<Object?> get props => [error];
}
