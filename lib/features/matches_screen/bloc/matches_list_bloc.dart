import 'dart:async';
import 'package:cyberapp/repositories/matches/matches.dart';
import 'package:cyberapp/repositories/matches/models/models.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

part 'matches_list_event.dart';

part 'matches_list_state.dart';

class MatchesListBloc extends Bloc<MatchesListEvent, MatchesListState> {
  MatchesListBloc() : super(MatchesListInitial()) {
    on<LoadMatchesListEvent>(_onLoadMatchesList);
  }

  FutureOr<void> _onLoadMatchesList(LoadMatchesListEvent event, Emitter<MatchesListState> emit){
    if (state is! MatchesListLoaded) {
      emit(MatchesListLoading());
    }
    try {
      final List<FakeMatchData> matchesList = MatchesRepository.matches;
      emit(MatchesListLoaded(matchesList: matchesList));
    } catch (error) {
      emit(MatchesListLoadingFailed(error: error));
    }
  }
}
