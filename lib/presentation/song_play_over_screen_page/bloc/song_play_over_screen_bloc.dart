import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/listsongtitle_item_model.dart';
import 'package:basri_s_application28/presentation/song_play_over_screen_page/models/song_play_over_screen_model.dart';
part 'song_play_over_screen_event.dart';
part 'song_play_over_screen_state.dart';

class SongPlayOverScreenBloc
    extends Bloc<SongPlayOverScreenEvent, SongPlayOverScreenState> {
  SongPlayOverScreenBloc(SongPlayOverScreenState initialState)
      : super(initialState) {
    on<SongPlayOverScreenInitialEvent>(_onInitialize);
  }

  _onInitialize(
    SongPlayOverScreenInitialEvent event,
    Emitter<SongPlayOverScreenState> emit,
  ) async {
    emit(state.copyWith(
        songPlayOverScreenModelObj: state.songPlayOverScreenModelObj?.copyWith(
      listsongtitleItemList: fillListsongtitleItemList(),
    )));
  }

  List<ListsongtitleItemModel> fillListsongtitleItemList() {
    return List.generate(6, (index) => ListsongtitleItemModel());
  }
}
