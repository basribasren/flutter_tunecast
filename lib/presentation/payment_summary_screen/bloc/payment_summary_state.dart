// ignore_for_file: must_be_immutable

part of 'payment_summary_bloc.dart';

class PaymentSummaryState extends Equatable {
  PaymentSummaryState({this.paymentSummaryModelObj});

  PaymentSummaryModel? paymentSummaryModelObj;

  @override
  List<Object?> get props => [
        paymentSummaryModelObj,
      ];
  PaymentSummaryState copyWith({PaymentSummaryModel? paymentSummaryModelObj}) {
    return PaymentSummaryState(
      paymentSummaryModelObj:
          paymentSummaryModelObj ?? this.paymentSummaryModelObj,
    );
  }
}
