import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:basri_s_application28/presentation/song_play_screen/models/song_play_model.dart';part 'song_play_event.dart';part 'song_play_state.dart';class SongPlayBloc extends Bloc<SongPlayEvent, SongPlayState> {SongPlayBloc(SongPlayState initialState) : super(initialState) { on<SongPlayInitialEvent>(_onInitialize); }

_onInitialize(SongPlayInitialEvent event, Emitter<SongPlayState> emit, ) async  {  } 
 }
