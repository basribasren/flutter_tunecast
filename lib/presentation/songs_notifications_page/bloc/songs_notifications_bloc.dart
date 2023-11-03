import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/listday_item_model.dart';
import '../models/listyesterday_item_model.dart';
import 'package:basri_s_application28/presentation/songs_notifications_page/models/songs_notifications_model.dart';
part 'songs_notifications_event.dart';
part 'songs_notifications_state.dart';

class SongsNotificationsBloc
    extends Bloc<SongsNotificationsEvent, SongsNotificationsState> {
  SongsNotificationsBloc(SongsNotificationsState initialState)
      : super(initialState) {
    on<SongsNotificationsInitialEvent>(_onInitialize);
  }

  _onInitialize(
    SongsNotificationsInitialEvent event,
    Emitter<SongsNotificationsState> emit,
  ) async {
    emit(state.copyWith(
        songsNotificationsModelObj: state.songsNotificationsModelObj?.copyWith(
      listdayItemList: fillListdayItemList(),
      listyesterdayItemList: fillListyesterdayItemList(),
    )));
  }

  List<ListdayItemModel> fillListdayItemList() {
    return List.generate(3, (index) => ListdayItemModel());
  }

  List<ListyesterdayItemModel> fillListyesterdayItemList() {
    return List.generate(3, (index) => ListyesterdayItemModel());
  }
}
