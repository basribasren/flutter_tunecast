import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import '../models/playlists_item_model.dart';import 'package:basri_s_application28/presentation/playlists_screen/models/playlists_model.dart';part 'playlists_event.dart';part 'playlists_state.dart';class PlaylistsBloc extends Bloc<PlaylistsEvent, PlaylistsState> {PlaylistsBloc(PlaylistsState initialState) : super(initialState) { on<PlaylistsInitialEvent>(_onInitialize); }

_onInitialize(PlaylistsInitialEvent event, Emitter<PlaylistsState> emit, ) async  { emit(state.copyWith(playlistsModelObj: state.playlistsModelObj?.copyWith(playlistsItemList: fillPlaylistsItemList()))); } 
List<PlaylistsItemModel> fillPlaylistsItemList() { return List.generate(3, (index) => PlaylistsItemModel()); } 
 }
