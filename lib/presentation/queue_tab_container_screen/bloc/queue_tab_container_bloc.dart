import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:basri_s_application28/presentation/queue_tab_container_screen/models/queue_tab_container_model.dart';part 'queue_tab_container_event.dart';part 'queue_tab_container_state.dart';class QueueTabContainerBloc extends Bloc<QueueTabContainerEvent, QueueTabContainerState> {QueueTabContainerBloc(QueueTabContainerState initialState) : super(initialState) { on<QueueTabContainerInitialEvent>(_onInitialize); }

_onInitialize(QueueTabContainerInitialEvent event, Emitter<QueueTabContainerState> emit, ) async  {  } 
 }
