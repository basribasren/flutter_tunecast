import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:basri_s_application28/presentation/add_new_card_screen/models/add_new_card_model.dart';part 'add_new_card_event.dart';part 'add_new_card_state.dart';class AddNewCardBloc extends Bloc<AddNewCardEvent, AddNewCardState> {AddNewCardBloc(AddNewCardState initialState) : super(initialState) { on<AddNewCardInitialEvent>(_onInitialize);on<ChangeDateEvent>(_changeDate); }

_onInitialize(AddNewCardInitialEvent event, Emitter<AddNewCardState> emit, ) async  { emit(state.copyWith(statusFillTypeDefaultController: TextEditingController(), statusFillTypeDefaultOneController: TextEditingController(), statusFillTypeDefaultTwoController: TextEditingController())); } 
_changeDate(ChangeDateEvent event, Emitter<AddNewCardState> emit, ) { emit(state.copyWith(
addNewCardModelObj: state.addNewCardModelObj?.copyWith(
dateTxt: event.date,
))); } 
 }
