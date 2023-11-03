import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:basri_s_application28/presentation/charts_screen/models/charts_model.dart';part 'charts_event.dart';part 'charts_state.dart';class ChartsBloc extends Bloc<ChartsEvent, ChartsState> {ChartsBloc(ChartsState initialState) : super(initialState) { on<ChartsInitialEvent>(_onInitialize); }

_onInitialize(ChartsInitialEvent event, Emitter<ChartsState> emit, ) async  {  } 
 }
