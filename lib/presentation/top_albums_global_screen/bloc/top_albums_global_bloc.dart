import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import '../models/listtype_item_model.dart';import 'package:basri_s_application28/presentation/top_albums_global_screen/models/top_albums_global_model.dart';part 'top_albums_global_event.dart';part 'top_albums_global_state.dart';class TopAlbumsGlobalBloc extends Bloc<TopAlbumsGlobalEvent, TopAlbumsGlobalState> {TopAlbumsGlobalBloc(TopAlbumsGlobalState initialState) : super(initialState) { on<TopAlbumsGlobalInitialEvent>(_onInitialize); }

_onInitialize(TopAlbumsGlobalInitialEvent event, Emitter<TopAlbumsGlobalState> emit, ) async  { emit(state.copyWith(topAlbumsGlobalModelObj: state.topAlbumsGlobalModelObj?.copyWith(listtypeItemList: fillListtypeItemList()))); } 
List<ListtypeItemModel> fillListtypeItemList() { return List.generate(4, (index) => ListtypeItemModel()); } 
 }
