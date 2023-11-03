import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import '../models/listtitle_item_model.dart';import 'package:basri_s_application28/presentation/playlist_details_screen/models/playlist_details_model.dart';part 'playlist_details_event.dart';part 'playlist_details_state.dart';class PlaylistDetailsBloc extends Bloc<PlaylistDetailsEvent, PlaylistDetailsState> {PlaylistDetailsBloc(PlaylistDetailsState initialState) : super(initialState) { on<PlaylistDetailsInitialEvent>(_onInitialize); }

_onInitialize(PlaylistDetailsInitialEvent event, Emitter<PlaylistDetailsState> emit, ) async  { emit(state.copyWith(playlistDetailsModelObj: state.playlistDetailsModelObj?.copyWith(listtitleItemList: fillListtitleItemList()))); } 
List<ListtitleItemModel> fillListtitleItemList() { return List.generate(3, (index) => ListtitleItemModel()); } 
 }
