import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import '../models/listloremipsumdolor1_item_model.dart';import '../models/artists_item_model.dart';import '../models/podcasts_item_model.dart';import 'package:basri_s_application28/presentation/podcasts_screen/models/podcasts_model.dart';part 'podcasts_event.dart';part 'podcasts_state.dart';class PodcastsBloc extends Bloc<PodcastsEvent, PodcastsState> {PodcastsBloc(PodcastsState initialState) : super(initialState) { on<PodcastsInitialEvent>(_onInitialize); }

_onInitialize(PodcastsInitialEvent event, Emitter<PodcastsState> emit, ) async  { emit(state.copyWith(podcastsModelObj: state.podcastsModelObj?.copyWith(listloremipsumdolor1ItemList: fillListloremipsumdolor1ItemList(), artistsItemList: fillArtistsItemList(), podcastsItemList: fillPodcastsItemList()))); } 
List<Listloremipsumdolor1ItemModel> fillListloremipsumdolor1ItemList() { return List.generate(3, (index) => Listloremipsumdolor1ItemModel()); } 
List<ArtistsItemModel> fillArtistsItemList() { return List.generate(3, (index) => ArtistsItemModel()); } 
List<PodcastsItemModel> fillPodcastsItemList() { return List.generate(4, (index) => PodcastsItemModel()); } 
 }
