import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/historymusic_item_model.dart';
import 'package:basri_s_application28/presentation/history_music_page/models/history_music_model.dart';
part 'history_music_event.dart';
part 'history_music_state.dart';

class HistoryMusicBloc extends Bloc<HistoryMusicEvent, HistoryMusicState> {
  HistoryMusicBloc(HistoryMusicState initialState) : super(initialState) {
    on<HistoryMusicInitialEvent>(_onInitialize);
  }

  _onInitialize(
    HistoryMusicInitialEvent event,
    Emitter<HistoryMusicState> emit,
  ) async {
    emit(state.copyWith(
        historyMusicModelObj: state.historyMusicModelObj?.copyWith(
      historymusicItemList: fillHistorymusicItemList(),
    )));
  }

  List<HistorymusicItemModel> fillHistorymusicItemList() {
    return List.generate(5, (index) => HistorymusicItemModel());
  }
}
