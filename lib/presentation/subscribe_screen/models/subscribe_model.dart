import 'package:equatable/equatable.dart';import 'subscribe_item_model.dart';
// ignore: must_be_immutable
class SubscribeModel extends Equatable {SubscribeModel({this.subscribeItemList = const []});

List<SubscribeItemModel> subscribeItemList;

SubscribeModel copyWith({List<SubscribeItemModel>? subscribeItemList}) { return SubscribeModel(
subscribeItemList : subscribeItemList ?? this.subscribeItemList,
); } 
@override List<Object?> get props => [subscribeItemList];
 }
