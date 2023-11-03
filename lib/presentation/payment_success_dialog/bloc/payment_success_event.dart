// ignore_for_file: must_be_immutable

part of 'payment_success_bloc.dart';

@immutable
abstract class PaymentSuccessEvent extends Equatable {}

class PaymentSuccessInitialEvent extends PaymentSuccessEvent {
  @override
  List<Object?> get props => [];
}
