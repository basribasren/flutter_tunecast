import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:country_pickers/country.dart';import 'package:country_pickers/utils/utils.dart';import 'package:basri_s_application28/presentation/profile_screen/models/profile_model.dart';part 'profile_event.dart';part 'profile_state.dart';class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {ProfileBloc(ProfileState initialState) : super(initialState) { on<ProfileInitialEvent>(_onInitialize); on<ChangeCountryEvent>(_changeCountry);on<ChangeDateEvent>(_changeDate); }

_changeCountry(ChangeCountryEvent event, Emitter<ProfileState> emit, ) { emit(state.copyWith(selectedCountry: event.value)); } 
_onInitialize(ProfileInitialEvent event, Emitter<ProfileState> emit, ) async  { emit(state.copyWith(statusDefaultController: TextEditingController(), statusDefaultOneController: TextEditingController(), statusDefaultTwoController: TextEditingController(), phoneNumberController: TextEditingController())); } 
_changeDate(ChangeDateEvent event, Emitter<ProfileState> emit, ) { emit(state.copyWith(
profileModelObj: state.profileModelObj?.copyWith(
labelTxt: event.date,
))); } 
 }
