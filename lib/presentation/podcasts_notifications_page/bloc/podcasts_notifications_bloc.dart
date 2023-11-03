import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/listpodcasttitle_item_model.dart';
import '../models/listsixteen_item_model.dart';
import 'package:basri_s_application28/presentation/podcasts_notifications_page/models/podcasts_notifications_model.dart';
part 'podcasts_notifications_event.dart';
part 'podcasts_notifications_state.dart';

class PodcastsNotificationsBloc
    extends Bloc<PodcastsNotificationsEvent, PodcastsNotificationsState> {
  PodcastsNotificationsBloc(PodcastsNotificationsState initialState)
      : super(initialState) {
    on<PodcastsNotificationsInitialEvent>(_onInitialize);
  }

  _onInitialize(
    PodcastsNotificationsInitialEvent event,
    Emitter<PodcastsNotificationsState> emit,
  ) async {
    emit(state.copyWith(
        podcastsNotificationsModelObj:
            state.podcastsNotificationsModelObj?.copyWith(
      listpodcasttitleItemList: fillListpodcasttitleItemList(),
      listsixteenItemList: fillListsixteenItemList(),
    )));
  }

  List<ListpodcasttitleItemModel> fillListpodcasttitleItemList() {
    return List.generate(3, (index) => ListpodcasttitleItemModel());
  }

  List<ListsixteenItemModel> fillListsixteenItemList() {
    return List.generate(2, (index) => ListsixteenItemModel());
  }
}
