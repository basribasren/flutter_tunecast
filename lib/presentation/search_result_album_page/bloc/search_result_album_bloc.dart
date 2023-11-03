import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import '../models/gridsweetener_item_model.dart';import 'package:basri_s_application28/presentation/search_result_album_page/models/search_result_album_model.dart';part 'search_result_album_event.dart';part 'search_result_album_state.dart';class SearchResultAlbumBloc extends Bloc<SearchResultAlbumEvent, SearchResultAlbumState> {SearchResultAlbumBloc(SearchResultAlbumState initialState) : super(initialState) { on<SearchResultAlbumInitialEvent>(_onInitialize); }

_onInitialize(SearchResultAlbumInitialEvent event, Emitter<SearchResultAlbumState> emit, ) async  { emit(state.copyWith(searchResultAlbumModelObj: state.searchResultAlbumModelObj?.copyWith(gridsweetenerItemList: fillGridsweetenerItemList()))); } 
List<GridsweetenerItemModel> fillGridsweetenerItemList() { return List.generate(4, (index) => GridsweetenerItemModel()); } 
 }
