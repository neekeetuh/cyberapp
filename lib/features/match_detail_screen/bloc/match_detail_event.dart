part of 'match_detail_bloc.dart';

sealed class MatchDetailEvent extends Equatable {
  const MatchDetailEvent();
}

final class LoadMatchDetailEvent extends MatchDetailEvent{
  final int id;

  const LoadMatchDetailEvent({required this.id});

  @override
  List<Object?> get props => [id];
}