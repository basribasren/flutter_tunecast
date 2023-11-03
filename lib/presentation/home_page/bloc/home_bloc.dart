import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import '../models/listloremipsumdolor_item_model.dart';import '../models/listname_item_model.dart';import 'package:basri_s_application28/presentation/home_page/models/home_model.dart';part 'home_event.dart';part 'home_state.dart';class HomeBloc extends Bloc<HomeEvent, HomeState> {HomeBloc(HomeState initialState) : super(initialState) { on<HomeInitialEvent>(_onInitialize); }

_onInitialize(HomeInitialEvent event, Emitter<HomeState> emit, ) async  { emit(state.copyWith(homeModelObj: state.homeModelObj?.copyWith(listloremipsumdolorItemList: fillListloremipsumdolorItemList(), listnameItemList: fillListnameItemList()))); } 
List<ListloremipsumdolorItemModel> fillListloremipsumdolorItemList() { return List.generate(3, (index) => ListloremipsumdolorItemModel()); } 
List<ListnameItemModel> fillListnameItemList() { return List.generate(3, (index) => ListnameItemModel()); } 
 }
