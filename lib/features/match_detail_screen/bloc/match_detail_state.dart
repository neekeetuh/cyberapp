part of 'match_detail_bloc.dart';

sealed class MatchDetailState extends Equatable {
  const MatchDetailState();
}

final class MatchDetailInitial extends MatchDetailState {
  @override
  List<Object> get props => [];
}

final class MatchDetailLoading extends MatchDetailState{
  @override
  List<Object?> get props => throw UnimplementedError();
}

final class MatchDetailLoaded extends MatchDetailState{
  final FakeMatchData match;

  const MatchDetailLoaded({required this.match});
  @override
  List<Object?> get props => [match];
}

final class MatchDetailLoadingFailed extends MatchDetailState{
  final Object? error;

  const MatchDetailLoadingFailed({ this.error});
  @override
  List<Object?> get props => [error];
}