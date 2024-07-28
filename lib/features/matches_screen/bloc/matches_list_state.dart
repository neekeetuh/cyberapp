part of 'matches_list_bloc.dart';

sealed class MatchesListState extends Equatable {
  const MatchesListState();
}

final class MatchesListInitial extends MatchesListState {
  @override
  List<Object> get props => [];
}

final class MatchesListLoading extends MatchesListState {
  @override
  List<Object?> get props => [];
}

final class MatchesListLoaded extends MatchesListState {
  final List<FakeMatchData> matchesList;

  const MatchesListLoaded({required this.matchesList});
  @override
  List<Object?> get props => [matchesList];
}

final class MatchesListLoadingFailed extends MatchesListState {

  final Object? error;

  const MatchesListLoadingFailed({this.error});
  @override
  List<Object?> get props => [error];
}