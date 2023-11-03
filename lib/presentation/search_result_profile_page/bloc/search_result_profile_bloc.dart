import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import '../models/listname2_item_model.dart';import 'package:basri_s_application28/presentation/search_result_profile_page/models/search_result_profile_model.dart';part 'search_result_profile_event.dart';part 'search_result_profile_state.dart';class SearchResultProfileBloc extends Bloc<SearchResultProfileEvent, SearchResultProfileState> {SearchResultProfileBloc(SearchResultProfileState initialState) : super(initialState) { on<SearchResultProfileInitialEvent>(_onInitialize); }

_onInitialize(SearchResultProfileInitialEvent event, Emitter<SearchResultProfileState> emit, ) async  { emit(state.copyWith(searchResultProfileModelObj: state.searchResultProfileModelObj?.copyWith(listname2ItemList: fillListname2ItemList()))); } 
List<Listname2ItemModel> fillListname2ItemList() { return List.generate(6, (index) => Listname2ItemModel()); } 
 }
