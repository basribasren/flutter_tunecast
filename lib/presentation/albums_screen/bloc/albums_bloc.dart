import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import '../models/albums_item_model.dart';import 'package:basri_s_application28/presentation/albums_screen/models/albums_model.dart';part 'albums_event.dart';part 'albums_state.dart';class AlbumsBloc extends Bloc<AlbumsEvent, AlbumsState> {AlbumsBloc(AlbumsState initialState) : super(initialState) { on<AlbumsInitialEvent>(_onInitialize); }

_onInitialize(AlbumsInitialEvent event, Emitter<AlbumsState> emit, ) async  { emit(state.copyWith(albumsModelObj: state.albumsModelObj?.copyWith(albumsItemList: fillAlbumsItemList()))); } 
List<AlbumsItemModel> fillAlbumsItemList() { return List.generate(4, (index) => AlbumsItemModel()); } 
 }
