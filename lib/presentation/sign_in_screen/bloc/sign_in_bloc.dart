import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:basri_s_application28/presentation/sign_in_screen/models/sign_in_model.dart';part 'sign_in_event.dart';part 'sign_in_state.dart';class SignInBloc extends Bloc<SignInEvent, SignInState> {SignInBloc(SignInState initialState) : super(initialState) { on<SignInInitialEvent>(_onInitialize); on<ChangePasswordVisibilityEvent>(_changePasswordVisibility); on<ChangeCheckBoxEvent>(_changeCheckBox); }

_changePasswordVisibility(ChangePasswordVisibilityEvent event, Emitter<SignInState> emit, ) { emit(state.copyWith(isShowPassword: event.value)); } 
_changeCheckBox(ChangeCheckBoxEvent event, Emitter<SignInState> emit, ) { emit(state.copyWith(isCheckbox: event.value)); } 
_onInitialize(SignInInitialEvent event, Emitter<SignInState> emit, ) async  { emit(state.copyWith(statusDefaultController: TextEditingController(), statusDefaultOneController: TextEditingController(), isShowPassword: true, isCheckbox: false)); } 
 }
