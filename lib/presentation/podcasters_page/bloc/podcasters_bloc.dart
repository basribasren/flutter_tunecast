import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/podcasters_item_model.dart';
import 'package:basri_s_application28/presentation/podcasters_page/models/podcasters_model.dart';
part 'podcasters_event.dart';
part 'podcasters_state.dart';

class PodcastersBloc extends Bloc<PodcastersEvent, PodcastersState> {
  PodcastersBloc(PodcastersState initialState) : super(initialState) {
    on<PodcastersInitialEvent>(_onInitialize);
  }

  _onInitialize(
    PodcastersInitialEvent event,
    Emitter<PodcastersState> emit,
  ) async {
    emit(state.copyWith(
        podcastersModelObj: state.podcastersModelObj?.copyWith(
      podcastersItemList: fillPodcastersItemList(),
    )));
  }

  List<PodcastersItemModel> fillPodcastersItemList() {
    return List.generate(7, (index) => PodcastersItemModel());
  }
}
