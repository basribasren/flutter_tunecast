import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import '../models/songdetails_item_model.dart';import 'package:basri_s_application28/presentation/song_details_screen/models/song_details_model.dart';part 'song_details_event.dart';part 'song_details_state.dart';class SongDetailsBloc extends Bloc<SongDetailsEvent, SongDetailsState> {SongDetailsBloc(SongDetailsState initialState) : super(initialState) { on<SongDetailsInitialEvent>(_onInitialize); }

_onInitialize(SongDetailsInitialEvent event, Emitter<SongDetailsState> emit, ) async  { emit(state.copyWith(songDetailsModelObj: state.songDetailsModelObj?.copyWith(songdetailsItemList: fillSongdetailsItemList()))); } 
List<SongdetailsItemModel> fillSongdetailsItemList() { return List.generate(2, (index) => SongdetailsItemModel()); } 
 }
