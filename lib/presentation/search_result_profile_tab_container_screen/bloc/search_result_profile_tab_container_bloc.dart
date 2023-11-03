import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:basri_s_application28/presentation/search_result_profile_tab_container_screen/models/search_result_profile_tab_container_model.dart';
part 'search_result_profile_tab_container_event.dart';
part 'search_result_profile_tab_container_state.dart';

class SearchResultProfileTabContainerBloc extends Bloc<
    SearchResultProfileTabContainerEvent,
    SearchResultProfileTabContainerState> {
  SearchResultProfileTabContainerBloc(
      SearchResultProfileTabContainerState initialState)
      : super(initialState) {
    on<SearchResultProfileTabContainerInitialEvent>(_onInitialize);
  }

  _onInitialize(
    SearchResultProfileTabContainerInitialEvent event,
    Emitter<SearchResultProfileTabContainerState> emit,
  ) async {
    emit(state.copyWith(
      filledSearchController: TextEditingController(),
    ));
  }
}
