import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:basri_s_application28/presentation/filled_otp_screen/models/filled_otp_model.dart';import 'package:sms_autofill/sms_autofill.dart';part 'filled_otp_event.dart';part 'filled_otp_state.dart';class FilledOtpBloc extends Bloc<FilledOtpEvent, FilledOtpState> with  CodeAutoFill {FilledOtpBloc(FilledOtpState initialState) : super(initialState) { on<FilledOtpInitialEvent>(_onInitialize); on<ChangeOTPEvent>(_changeOTP); }

@override codeUpdated() { add(ChangeOTPEvent(code: code!)); } 
_changeOTP(ChangeOTPEvent event, Emitter<FilledOtpState> emit, ) { emit(state.copyWith(otpController: TextEditingController(text: event.code))); } 
_onInitialize(FilledOtpInitialEvent event, Emitter<FilledOtpState> emit, ) async  { emit(state.copyWith(otpController: TextEditingController())); listenForCode(); } 
 }
