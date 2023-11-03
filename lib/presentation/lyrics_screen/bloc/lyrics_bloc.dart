import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:basri_s_application28/presentation/lyrics_screen/models/lyrics_model.dart';part 'lyrics_event.dart';part 'lyrics_state.dart';class LyricsBloc extends Bloc<LyricsEvent, LyricsState> {LyricsBloc(LyricsState initialState) : super(initialState) { on<LyricsInitialEvent>(_onInitialize); }

_onInitialize(LyricsInitialEvent event, Emitter<LyricsState> emit, ) async  {  } 
 }
