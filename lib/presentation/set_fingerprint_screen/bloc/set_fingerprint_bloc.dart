import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:basri_s_application28/presentation/set_fingerprint_screen/models/set_fingerprint_model.dart';part 'set_fingerprint_event.dart';part 'set_fingerprint_state.dart';class SetFingerprintBloc extends Bloc<SetFingerprintEvent, SetFingerprintState> {SetFingerprintBloc(SetFingerprintState initialState) : super(initialState) { on<SetFingerprintInitialEvent>(_onInitialize); }

_onInitialize(SetFingerprintInitialEvent event, Emitter<SetFingerprintState> emit, ) async  {  } 
 }
