import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import '../models/songs_item_model.dart';import 'package:basri_s_application28/presentation/songs_screen/models/songs_model.dart';part 'songs_event.dart';part 'songs_state.dart';class SongsBloc extends Bloc<SongsEvent, SongsState> {SongsBloc(SongsState initialState) : super(initialState) { on<SongsInitialEvent>(_onInitialize); }

_onInitialize(SongsInitialEvent event, Emitter<SongsState> emit, ) async  { emit(state.copyWith(songsModelObj: state.songsModelObj?.copyWith(songsItemList: fillSongsItemList()))); } 
List<SongsItemModel> fillSongsItemList() { return List.generate(6, (index) => SongsItemModel()); } 
 }
