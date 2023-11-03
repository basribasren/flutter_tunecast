import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import '../models/subscribe_item_model.dart';import 'package:basri_s_application28/presentation/subscribe_screen/models/subscribe_model.dart';part 'subscribe_event.dart';part 'subscribe_state.dart';class SubscribeBloc extends Bloc<SubscribeEvent, SubscribeState> {SubscribeBloc(SubscribeState initialState) : super(initialState) { on<SubscribeInitialEvent>(_onInitialize); }

_onInitialize(SubscribeInitialEvent event, Emitter<SubscribeState> emit, ) async  { emit(state.copyWith(subscribeModelObj: state.subscribeModelObj?.copyWith(subscribeItemList: fillSubscribeItemList()))); } 
List<SubscribeItemModel> fillSubscribeItemList() { return List.generate(2, (index) => SubscribeItemModel()); } 
 }
