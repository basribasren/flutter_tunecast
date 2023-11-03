import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/yourlikes_item_model.dart';
import 'package:basri_s_application28/presentation/your_likes_page/models/your_likes_model.dart';
part 'your_likes_event.dart';
part 'your_likes_state.dart';

class YourLikesBloc extends Bloc<YourLikesEvent, YourLikesState> {
  YourLikesBloc(YourLikesState initialState) : super(initialState) {
    on<YourLikesInitialEvent>(_onInitialize);
  }

  _onInitialize(
    YourLikesInitialEvent event,
    Emitter<YourLikesState> emit,
  ) async {
    emit(state.copyWith(
        yourLikesModelObj: state.yourLikesModelObj?.copyWith(
      yourlikesItemList: fillYourlikesItemList(),
    )));
  }

  List<YourlikesItemModel> fillYourlikesItemList() {
    return List.generate(5, (index) => YourlikesItemModel());
  }
}
