import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:basri_s_application28/presentation/lets_you_in_screen/models/lets_you_in_model.dart';part 'lets_you_in_event.dart';part 'lets_you_in_state.dart';class LetsYouInBloc extends Bloc<LetsYouInEvent, LetsYouInState> {LetsYouInBloc(LetsYouInState initialState) : super(initialState) { on<LetsYouInInitialEvent>(_onInitialize); }

_onInitialize(LetsYouInInitialEvent event, Emitter<LetsYouInState> emit, ) async  {  } 
 }
