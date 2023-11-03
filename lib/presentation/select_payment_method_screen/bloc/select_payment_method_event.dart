// ignore_for_file: must_be_immutable

part of 'select_payment_method_bloc.dart';

@immutable
abstract class SelectPaymentMethodEvent extends Equatable {}

class SelectPaymentMethodInitialEvent extends SelectPaymentMethodEvent {
  @override
  List<Object?> get props => [];
}
