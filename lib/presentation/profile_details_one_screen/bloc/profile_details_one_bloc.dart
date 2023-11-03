import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:basri_s_application28/presentation/profile_details_one_screen/models/profile_details_one_model.dart';part 'profile_details_one_event.dart';part 'profile_details_one_state.dart';class ProfileDetailsOneBloc extends Bloc<ProfileDetailsOneEvent, ProfileDetailsOneState> {ProfileDetailsOneBloc(ProfileDetailsOneState initialState) : super(initialState) { on<ProfileDetailsOneInitialEvent>(_onInitialize); }

_onInitialize(ProfileDetailsOneInitialEvent event, Emitter<ProfileDetailsOneState> emit, ) async  {  } 
 }
