import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/gridlanguage_item_model.dart';
import 'package:basri_s_application28/presentation/search_result_playlist_page/models/search_result_playlist_model.dart';
part 'search_result_playlist_event.dart';
part 'search_result_playlist_state.dart';

class SearchResultPlaylistBloc
    extends Bloc<SearchResultPlaylistEvent, SearchResultPlaylistState> {
  SearchResultPlaylistBloc(SearchResultPlaylistState initialState)
      : super(initialState) {
    on<SearchResultPlaylistInitialEvent>(_onInitialize);
  }

  _onInitialize(
    SearchResultPlaylistInitialEvent event,
    Emitter<SearchResultPlaylistState> emit,
  ) async {
    emit(state.copyWith(
        searchResultPlaylistModelObj:
            state.searchResultPlaylistModelObj?.copyWith(
      gridlanguageItemList: fillGridlanguageItemList(),
    )));
  }

  List<GridlanguageItemModel> fillGridlanguageItemList() {
    return List.generate(4, (index) => GridlanguageItemModel());
  }
}
