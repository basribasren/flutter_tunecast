import 'package:equatable/equatable.dart';import 'listday_item_model.dart';import 'listyesterday_item_model.dart';
// ignore: must_be_immutable
class SongsNotificationsModel extends Equatable {SongsNotificationsModel({this.listdayItemList = const [], this.listyesterdayItemList = const []});

List<ListdayItemModel> listdayItemList;

List<ListyesterdayItemModel> listyesterdayItemList;

SongsNotificationsModel copyWith({List<ListdayItemModel>? listdayItemList, List<ListyesterdayItemModel>? listyesterdayItemList}) { return SongsNotificationsModel(
listdayItemList : listdayItemList ?? this.listdayItemList,
listyesterdayItemList : listyesterdayItemList ?? this.listyesterdayItemList,
); } 
@override List<Object?> get props => [listdayItemList,listyesterdayItemList];
 }
