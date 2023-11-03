import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:basri_s_application28/presentation/artists_tab_container_screen/models/artists_tab_container_model.dart';part 'artists_tab_container_event.dart';part 'artists_tab_container_state.dart';class ArtistsTabContainerBloc extends Bloc<ArtistsTabContainerEvent, ArtistsTabContainerState> {ArtistsTabContainerBloc(ArtistsTabContainerState initialState) : super(initialState) { on<ArtistsTabContainerInitialEvent>(_onInitialize); }

_onInitialize(ArtistsTabContainerInitialEvent event, Emitter<ArtistsTabContainerState> emit, ) async  {  } 
 }
