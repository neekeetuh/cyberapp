part of 'matches_list_bloc.dart';

sealed class MatchesListEvent extends Equatable {
  const MatchesListEvent();
}

final class LoadMatchesListEvent extends MatchesListEvent{
  @override
  List<Object?> get props => [];
}
