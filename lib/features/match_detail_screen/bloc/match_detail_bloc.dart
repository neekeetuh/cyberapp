import 'dart:async';
import 'package:cyberapp/repositories/matches/matches.dart';
import 'package:cyberapp/repositories/matches/models/models.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

part 'match_detail_event.dart';
part 'match_detail_state.dart';

class MatchDetailBloc extends Bloc<MatchDetailEvent, MatchDetailState> {
  MatchDetailBloc() : super(MatchDetailInitial()) {
    on<LoadMatchDetailEvent>(_onLoadMatchDetail);
  }

  FutureOr<void> _onLoadMatchDetail(LoadMatchDetailEvent event, Emitter<MatchDetailState> emit) {
    if(state is! MatchDetailLoaded){
      emit(MatchDetailLoading());
    }
    try {
      final FakeMatchData match = MatchesRepository.matches.firstWhere((match)=> match.id == event.id);
      emit(MatchDetailLoaded(match: match));
    } catch (error) {
      emit(MatchDetailLoadingFailed(error: error));
    }
  }
}
