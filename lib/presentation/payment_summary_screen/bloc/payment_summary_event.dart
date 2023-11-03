// ignore_for_file: must_be_immutable

part of 'payment_summary_bloc.dart';

@immutable
abstract class PaymentSummaryEvent extends Equatable {}

class PaymentSummaryInitialEvent extends PaymentSummaryEvent {
  @override
  List<Object?> get props => [];
}
