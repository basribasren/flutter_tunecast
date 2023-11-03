import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:basri_s_application28/presentation/payment_summary_screen/models/payment_summary_model.dart';part 'payment_summary_event.dart';part 'payment_summary_state.dart';class PaymentSummaryBloc extends Bloc<PaymentSummaryEvent, PaymentSummaryState> {PaymentSummaryBloc(PaymentSummaryState initialState) : super(initialState) { on<PaymentSummaryInitialEvent>(_onInitialize); }

_onInitialize(PaymentSummaryInitialEvent event, Emitter<PaymentSummaryState> emit, ) async  {  } 
 }
