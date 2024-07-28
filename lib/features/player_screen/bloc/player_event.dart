part of 'player_bloc.dart';

sealed class PlayerEvent extends Equatable {
  const PlayerEvent();
}

final class LoadPlayerData extends PlayerEvent{
  final int id;

  const LoadPlayerData({required this.id});
  @override
  List<Object?> get props => [id];
}
