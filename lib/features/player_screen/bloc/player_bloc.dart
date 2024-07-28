import 'dart:async';
import 'package:cyberapp/repositories/players/models/models.dart';
import 'package:cyberapp/repositories/players/players.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

part 'player_event.dart';
part 'player_state.dart';

class PlayerBloc extends Bloc<PlayerEvent, PlayerState> {
  PlayerBloc() : super(PlayerInitial()) {
    on<LoadPlayerData>(_onLoadPlayerData);
  }

  FutureOr<void> _onLoadPlayerData(LoadPlayerData event, Emitter<PlayerState> emit) {
    if(state is! PlayerLoaded){
      emit(PlayerLoading());
    }
    try {
      final Player player = PlayersRepository.players.firstWhere((player)=>player.id == event.id);
      emit(PlayerLoaded(player: player));
    } catch (error) {
      emit(PlayerLoadingFailed(error: error));
    }
  }
}
