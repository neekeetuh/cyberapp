part of 'player_bloc.dart';

sealed class PlayerState extends Equatable {
  const PlayerState();
}

final class PlayerInitial extends PlayerState {
  @override
  List<Object> get props => [];
}

final class PlayerLoading extends PlayerState{
  @override
  List<Object?> get props => [];
}

final class PlayerLoaded extends PlayerState{
  final Player player;

  const PlayerLoaded({required this.player});
  @override
  List<Object?> get props => [player];
}

final class PlayerLoadingFailed extends PlayerState{
  final Object? error;

  const PlayerLoadingFailed({this.error});
  @override
  List<Object?> get props => [error];
}
