import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import '../models/trendingnow_item_model.dart';import 'package:basri_s_application28/presentation/trending_now_screen/models/trending_now_model.dart';part 'trending_now_event.dart';part 'trending_now_state.dart';class TrendingNowBloc extends Bloc<TrendingNowEvent, TrendingNowState> {TrendingNowBloc(TrendingNowState initialState) : super(initialState) { on<TrendingNowInitialEvent>(_onInitialize); }

_onInitialize(TrendingNowInitialEvent event, Emitter<TrendingNowState> emit, ) async  { emit(state.copyWith(trendingNowModelObj: state.trendingNowModelObj?.copyWith(trendingnowItemList: fillTrendingnowItemList()))); } 
List<TrendingnowItemModel> fillTrendingnowItemList() { return List.generate(6, (index) => TrendingnowItemModel()); } 
 }
