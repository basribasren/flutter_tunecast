import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/listsongvalue_item_model.dart';
import 'package:basri_s_application28/presentation/search_result_top_page/models/search_result_top_model.dart';
part 'search_result_top_event.dart';
part 'search_result_top_state.dart';

class SearchResultTopBloc
    extends Bloc<SearchResultTopEvent, SearchResultTopState> {
  SearchResultTopBloc(SearchResultTopState initialState) : super(initialState) {
    on<SearchResultTopInitialEvent>(_onInitialize);
  }

  _onInitialize(
    SearchResultTopInitialEvent event,
    Emitter<SearchResultTopState> emit,
  ) async {
    emit(state.copyWith(
        searchResultTopModelObj: state.searchResultTopModelObj?.copyWith(
      listsongvalueItemList: fillListsongvalueItemList(),
    )));
  }

  List<ListsongvalueItemModel> fillListsongvalueItemList() {
    return List.generate(7, (index) => ListsongvalueItemModel());
  }
}
