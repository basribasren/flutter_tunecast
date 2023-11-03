import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/listpodcasttitle3_item_model.dart';
import 'package:basri_s_application28/presentation/history_podcast_page/models/history_podcast_model.dart';
part 'history_podcast_event.dart';
part 'history_podcast_state.dart';

class HistoryPodcastBloc
    extends Bloc<HistoryPodcastEvent, HistoryPodcastState> {
  HistoryPodcastBloc(HistoryPodcastState initialState) : super(initialState) {
    on<HistoryPodcastInitialEvent>(_onInitialize);
  }

  _onInitialize(
    HistoryPodcastInitialEvent event,
    Emitter<HistoryPodcastState> emit,
  ) async {
    emit(state.copyWith(
        historyPodcastModelObj: state.historyPodcastModelObj?.copyWith(
      listpodcasttitle3ItemList: fillListpodcasttitle3ItemList(),
    )));
  }

  List<Listpodcasttitle3ItemModel> fillListpodcasttitle3ItemList() {
    return List.generate(3, (index) => Listpodcasttitle3ItemModel());
  }
}
