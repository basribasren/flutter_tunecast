import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/listname1_item_model.dart';
import 'package:basri_s_application28/presentation/search_type_keyword_screen/models/search_type_keyword_model.dart';
part 'search_type_keyword_event.dart';
part 'search_type_keyword_state.dart';

class SearchTypeKeywordBloc
    extends Bloc<SearchTypeKeywordEvent, SearchTypeKeywordState> {
  SearchTypeKeywordBloc(SearchTypeKeywordState initialState)
      : super(initialState) {
    on<SearchTypeKeywordInitialEvent>(_onInitialize);
  }

  List<Listname1ItemModel> fillListname1ItemList() {
    return List.generate(8, (index) => Listname1ItemModel());
  }

  _onInitialize(
    SearchTypeKeywordInitialEvent event,
    Emitter<SearchTypeKeywordState> emit,
  ) async {
    emit(state.copyWith(
      searchController: TextEditingController(),
    ));
    emit(state.copyWith(
        searchTypeKeywordModelObj: state.searchTypeKeywordModelObj?.copyWith(
      listname1ItemList: fillListname1ItemList(),
    )));
  }
}
