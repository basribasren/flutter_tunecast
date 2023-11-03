import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:basri_s_application28/presentation/profile_details_screen/models/profile_details_model.dart';part 'profile_details_event.dart';part 'profile_details_state.dart';class ProfileDetailsBloc extends Bloc<ProfileDetailsEvent, ProfileDetailsState> {ProfileDetailsBloc(ProfileDetailsState initialState) : super(initialState) { on<ProfileDetailsInitialEvent>(_onInitialize); }

_onInitialize(ProfileDetailsInitialEvent event, Emitter<ProfileDetailsState> emit, ) async  {  } 
 }
