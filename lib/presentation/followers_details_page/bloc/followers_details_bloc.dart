import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/listname3_item_model.dart';
import 'package:basri_s_application28/presentation/followers_details_page/models/followers_details_model.dart';
part 'followers_details_event.dart';
part 'followers_details_state.dart';

class FollowersDetailsBloc
    extends Bloc<FollowersDetailsEvent, FollowersDetailsState> {
  FollowersDetailsBloc(FollowersDetailsState initialState)
      : super(initialState) {
    on<FollowersDetailsInitialEvent>(_onInitialize);
  }

  _onInitialize(
    FollowersDetailsInitialEvent event,
    Emitter<FollowersDetailsState> emit,
  ) async {
    emit(state.copyWith(
        followersDetailsModelObj: state.followersDetailsModelObj?.copyWith(
      listname3ItemList: fillListname3ItemList(),
    )));
  }

  List<Listname3ItemModel> fillListname3ItemList() {
    return List.generate(5, (index) => Listname3ItemModel());
  }
}
