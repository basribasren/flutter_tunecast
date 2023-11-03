import 'package:equatable/equatable.dart';import 'trendingnow_item_model.dart';
// ignore: must_be_immutable
class TrendingNowModel extends Equatable {TrendingNowModel({this.trendingnowItemList = const []});

List<TrendingnowItemModel> trendingnowItemList;

TrendingNowModel copyWith({List<TrendingnowItemModel>? trendingnowItemList}) { return TrendingNowModel(
trendingnowItemList : trendingnowItemList ?? this.trendingnowItemList,
); } 
@override List<Object?> get props => [trendingnowItemList];
 }
