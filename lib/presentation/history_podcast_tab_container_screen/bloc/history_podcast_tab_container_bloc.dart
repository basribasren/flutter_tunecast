import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:basri_s_application28/presentation/history_podcast_tab_container_screen/models/history_podcast_tab_container_model.dart';part 'history_podcast_tab_container_event.dart';part 'history_podcast_tab_container_state.dart';class HistoryPodcastTabContainerBloc extends Bloc<HistoryPodcastTabContainerEvent, HistoryPodcastTabContainerState> {HistoryPodcastTabContainerBloc(HistoryPodcastTabContainerState initialState) : super(initialState) { on<HistoryPodcastTabContainerInitialEvent>(_onInitialize); }

_onInitialize(HistoryPodcastTabContainerInitialEvent event, Emitter<HistoryPodcastTabContainerState> emit, ) async  {  } 
 }
