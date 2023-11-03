import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:basri_s_application28/presentation/edit_profile_screen/models/edit_profile_model.dart';part 'edit_profile_event.dart';part 'edit_profile_state.dart';class EditProfileBloc extends Bloc<EditProfileEvent, EditProfileState> {EditProfileBloc(EditProfileState initialState) : super(initialState) { on<EditProfileInitialEvent>(_onInitialize); on<ChangeDropDownEvent>(_changeDropDown);on<ChangeDateEvent>(_changeDate); }

_changeDropDown(ChangeDropDownEvent event, Emitter<EditProfileState> emit, ) { emit(state.copyWith(selectedDropDownValue: event.value)); } 
List<SelectionPopupModel> fillDropdownItemList() { return [SelectionPopupModel(id: 1, title: "Item One", isSelected: true), SelectionPopupModel(id: 2, title: "Item Two"), SelectionPopupModel(id: 3, title: "Item Three")]; } 
_onInitialize(EditProfileInitialEvent event, Emitter<EditProfileState> emit, ) async  { emit(state.copyWith(statusFillTypeDefaultController: TextEditingController(), statusFillTypeDefaultOneController: TextEditingController(), emailController: TextEditingController(), statusFillTypePhoneController: TextEditingController())); emit(state.copyWith(editProfileModelObj: state.editProfileModelObj?.copyWith(dropdownItemList: fillDropdownItemList()))); } 
_changeDate(ChangeDateEvent event, Emitter<EditProfileState> emit, ) { emit(state.copyWith(
editProfileModelObj: state.editProfileModelObj?.copyWith(
dateTxt: event.date,
))); } 
 }
