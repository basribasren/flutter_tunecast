import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/artists1_item_model.dart';
import 'package:basri_s_application28/presentation/artists_page/models/artists_model.dart';
part 'artists_event.dart';
part 'artists_state.dart';

class ArtistsBloc extends Bloc<ArtistsEvent, ArtistsState> {
  ArtistsBloc(ArtistsState initialState) : super(initialState) {
    on<ArtistsInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ArtistsInitialEvent event,
    Emitter<ArtistsState> emit,
  ) async {
    emit(state.copyWith(
        artistsModelObj: state.artistsModelObj?.copyWith(
      artists1ItemList: fillArtists1ItemList(),
    )));
  }

  List<Artists1ItemModel> fillArtists1ItemList() {
    return List.generate(7, (index) => Artists1ItemModel());
  }
}
