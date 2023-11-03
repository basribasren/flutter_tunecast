import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import '../models/listreply_item_model.dart';import 'package:basri_s_application28/presentation/select_payment_method_screen/models/select_payment_method_model.dart';part 'select_payment_method_event.dart';part 'select_payment_method_state.dart';class SelectPaymentMethodBloc extends Bloc<SelectPaymentMethodEvent, SelectPaymentMethodState> {SelectPaymentMethodBloc(SelectPaymentMethodState initialState) : super(initialState) { on<SelectPaymentMethodInitialEvent>(_onInitialize); }

_onInitialize(SelectPaymentMethodInitialEvent event, Emitter<SelectPaymentMethodState> emit, ) async  { emit(state.copyWith(selectPaymentMethodModelObj: state.selectPaymentMethodModelObj?.copyWith(listreplyItemList: fillListreplyItemList()))); } 
List<ListreplyItemModel> fillListreplyItemList() { return List.generate(3, (index) => ListreplyItemModel()); } 
 }
