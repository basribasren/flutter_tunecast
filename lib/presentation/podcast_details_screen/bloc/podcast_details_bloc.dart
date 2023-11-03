import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import '../models/listpodcasttitle2_item_model.dart';import 'package:basri_s_application28/presentation/podcast_details_screen/models/podcast_details_model.dart';part 'podcast_details_event.dart';part 'podcast_details_state.dart';class PodcastDetailsBloc extends Bloc<PodcastDetailsEvent, PodcastDetailsState> {PodcastDetailsBloc(PodcastDetailsState initialState) : super(initialState) { on<PodcastDetailsInitialEvent>(_onInitialize); }

_onInitialize(PodcastDetailsInitialEvent event, Emitter<PodcastDetailsState> emit, ) async  { emit(state.copyWith(podcastDetailsModelObj: state.podcastDetailsModelObj?.copyWith(listpodcasttitle2ItemList: fillListpodcasttitle2ItemList()))); } 
List<Listpodcasttitle2ItemModel> fillListpodcasttitle2ItemList() { return List.generate(2, (index) => Listpodcasttitle2ItemModel()); } 
 }
