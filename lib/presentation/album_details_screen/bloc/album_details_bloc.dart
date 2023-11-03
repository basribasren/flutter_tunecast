import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import '../models/albumdetails_item_model.dart';import 'package:basri_s_application28/presentation/album_details_screen/models/album_details_model.dart';part 'album_details_event.dart';part 'album_details_state.dart';class AlbumDetailsBloc extends Bloc<AlbumDetailsEvent, AlbumDetailsState> {AlbumDetailsBloc(AlbumDetailsState initialState) : super(initialState) { on<AlbumDetailsInitialEvent>(_onInitialize); }

_onInitialize(AlbumDetailsInitialEvent event, Emitter<AlbumDetailsState> emit, ) async  { emit(state.copyWith(albumDetailsModelObj: state.albumDetailsModelObj?.copyWith(albumdetailsItemList: fillAlbumdetailsItemList()))); } 
List<AlbumdetailsItemModel> fillAlbumdetailsItemList() { return List.generate(2, (index) => AlbumdetailsItemModel()); } 
 }
