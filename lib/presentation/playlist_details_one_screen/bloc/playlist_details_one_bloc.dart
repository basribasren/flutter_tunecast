import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import '../models/listartistname_item_model.dart';import 'package:basri_s_application28/presentation/playlist_details_one_screen/models/playlist_details_one_model.dart';part 'playlist_details_one_event.dart';part 'playlist_details_one_state.dart';class PlaylistDetailsOneBloc extends Bloc<PlaylistDetailsOneEvent, PlaylistDetailsOneState> {PlaylistDetailsOneBloc(PlaylistDetailsOneState initialState) : super(initialState) { on<PlaylistDetailsOneInitialEvent>(_onInitialize); }

_onInitialize(PlaylistDetailsOneInitialEvent event, Emitter<PlaylistDetailsOneState> emit, ) async  { emit(state.copyWith(playlistDetailsOneModelObj: state.playlistDetailsOneModelObj?.copyWith(listartistnameItemList: fillListartistnameItemList()))); } 
List<ListartistnameItemModel> fillListartistnameItemList() { return List.generate(2, (index) => ListartistnameItemModel()); } 
 }
