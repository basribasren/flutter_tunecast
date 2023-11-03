import 'package:equatable/equatable.dart';import 'listloremipsumdolor_item_model.dart';import 'listname_item_model.dart';
// ignore: must_be_immutable
class HomeModel extends Equatable {HomeModel({this.listloremipsumdolorItemList = const [], this.listnameItemList = const []});

List<ListloremipsumdolorItemModel> listloremipsumdolorItemList;

List<ListnameItemModel> listnameItemList;

HomeModel copyWith({List<ListloremipsumdolorItemModel>? listloremipsumdolorItemList, List<ListnameItemModel>? listnameItemList}) { return HomeModel(
listloremipsumdolorItemList : listloremipsumdolorItemList ?? this.listloremipsumdolorItemList,
listnameItemList : listnameItemList ?? this.listnameItemList,
); } 
@override List<Object?> get props => [listloremipsumdolorItemList,listnameItemList];
 }
