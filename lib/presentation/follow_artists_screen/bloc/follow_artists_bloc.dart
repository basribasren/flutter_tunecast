import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import '../models/followartists_item_model.dart';import 'package:basri_s_application28/presentation/follow_artists_screen/models/follow_artists_model.dart';part 'follow_artists_event.dart';part 'follow_artists_state.dart';class FollowArtistsBloc extends Bloc<FollowArtistsEvent, FollowArtistsState> {FollowArtistsBloc(FollowArtistsState initialState) : super(initialState) { on<FollowArtistsInitialEvent>(_onInitialize); }

_onInitialize(FollowArtistsInitialEvent event, Emitter<FollowArtistsState> emit, ) async  { emit(state.copyWith(followArtistsModelObj: state.followArtistsModelObj?.copyWith(followartistsItemList: fillFollowartistsItemList()))); } 
List<FollowartistsItemModel> fillFollowartistsItemList() { return List.generate(4, (index) => FollowartistsItemModel()); } 
 }
