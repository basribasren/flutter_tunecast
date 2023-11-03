import 'package:equatable/equatable.dart';import 'paymentmethod_item_model.dart';
// ignore: must_be_immutable
class PaymentMethodModel extends Equatable {PaymentMethodModel({this.paymentmethodItemList = const []});

List<PaymentmethodItemModel> paymentmethodItemList;

PaymentMethodModel copyWith({List<PaymentmethodItemModel>? paymentmethodItemList}) { return PaymentMethodModel(
paymentmethodItemList : paymentmethodItemList ?? this.paymentmethodItemList,
); } 
@override List<Object?> get props => [paymentmethodItemList];
 }
