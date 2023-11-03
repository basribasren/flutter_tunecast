import 'package:equatable/equatable.dart';import 'listreply_item_model.dart';
// ignore: must_be_immutable
class SelectPaymentMethodModel extends Equatable {SelectPaymentMethodModel({this.listreplyItemList = const []});

List<ListreplyItemModel> listreplyItemList;

SelectPaymentMethodModel copyWith({List<ListreplyItemModel>? listreplyItemList}) { return SelectPaymentMethodModel(
listreplyItemList : listreplyItemList ?? this.listreplyItemList,
); } 
@override List<Object?> get props => [listreplyItemList];
 }
