import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import '../models/paymentmethod_item_model.dart';import 'package:basri_s_application28/presentation/payment_method_screen/models/payment_method_model.dart';part 'payment_method_event.dart';part 'payment_method_state.dart';class PaymentMethodBloc extends Bloc<PaymentMethodEvent, PaymentMethodState> {PaymentMethodBloc(PaymentMethodState initialState) : super(initialState) { on<PaymentMethodInitialEvent>(_onInitialize); }

_onInitialize(PaymentMethodInitialEvent event, Emitter<PaymentMethodState> emit, ) async  { emit(state.copyWith(paymentMethodModelObj: state.paymentMethodModelObj?.copyWith(paymentmethodItemList: fillPaymentmethodItemList()))); } 
List<PaymentmethodItemModel> fillPaymentmethodItemList() { return List.generate(3, (index) => PaymentmethodItemModel()); } 
 }
