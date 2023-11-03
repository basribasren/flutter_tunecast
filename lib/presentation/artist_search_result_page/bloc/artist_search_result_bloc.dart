import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import '../models/listellipseone_item_model.dart';import 'package:basri_s_application28/presentation/artist_search_result_page/models/artist_search_result_model.dart';part 'artist_search_result_event.dart';part 'artist_search_result_state.dart';class ArtistSearchResultBloc extends Bloc<ArtistSearchResultEvent, ArtistSearchResultState> {ArtistSearchResultBloc(ArtistSearchResultState initialState) : super(initialState) { on<ArtistSearchResultInitialEvent>(_onInitialize); }

_onInitialize(ArtistSearchResultInitialEvent event, Emitter<ArtistSearchResultState> emit, ) async  { emit(state.copyWith(artistSearchResultModelObj: state.artistSearchResultModelObj?.copyWith(listellipseoneItemList: fillListellipseoneItemList()))); } 
List<ListellipseoneItemModel> fillListellipseoneItemList() { return List.generate(5, (index) => ListellipseoneItemModel()); } 
 }
