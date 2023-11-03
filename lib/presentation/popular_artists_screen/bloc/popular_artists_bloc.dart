import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import '../models/gridname_item_model.dart';import 'package:basri_s_application28/presentation/popular_artists_screen/models/popular_artists_model.dart';part 'popular_artists_event.dart';part 'popular_artists_state.dart';class PopularArtistsBloc extends Bloc<PopularArtistsEvent, PopularArtistsState> {PopularArtistsBloc(PopularArtistsState initialState) : super(initialState) { on<PopularArtistsInitialEvent>(_onInitialize); }

_onInitialize(PopularArtistsInitialEvent event, Emitter<PopularArtistsState> emit, ) async  { emit(state.copyWith(popularArtistsModelObj: state.popularArtistsModelObj?.copyWith(gridnameItemList: fillGridnameItemList()))); } 
List<GridnameItemModel> fillGridnameItemList() { return List.generate(6, (index) => GridnameItemModel()); } 
 }
