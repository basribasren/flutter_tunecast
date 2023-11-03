import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import '../models/downloads_item_model.dart';import 'package:basri_s_application28/presentation/downloads_screen/models/downloads_model.dart';part 'downloads_event.dart';part 'downloads_state.dart';class DownloadsBloc extends Bloc<DownloadsEvent, DownloadsState> {DownloadsBloc(DownloadsState initialState) : super(initialState) { on<DownloadsInitialEvent>(_onInitialize); }

_onInitialize(DownloadsInitialEvent event, Emitter<DownloadsState> emit, ) async  { emit(state.copyWith(downloadsModelObj: state.downloadsModelObj?.copyWith(downloadsItemList: fillDownloadsItemList()))); } 
List<DownloadsItemModel> fillDownloadsItemList() { return List.generate(4, (index) => DownloadsItemModel()); } 
 }
