import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:basri_s_application28/presentation/followers_details_tab_container_screen/models/followers_details_tab_container_model.dart';part 'followers_details_tab_container_event.dart';part 'followers_details_tab_container_state.dart';class FollowersDetailsTabContainerBloc extends Bloc<FollowersDetailsTabContainerEvent, FollowersDetailsTabContainerState> {FollowersDetailsTabContainerBloc(FollowersDetailsTabContainerState initialState) : super(initialState) { on<FollowersDetailsTabContainerInitialEvent>(_onInitialize); }

_onInitialize(FollowersDetailsTabContainerInitialEvent event, Emitter<FollowersDetailsTabContainerState> emit, ) async  {  } 
 }
