import 'package:equatable/equatable.dart';import 'listtype_item_model.dart';
// ignore: must_be_immutable
class TopAlbumsGlobalModel extends Equatable {TopAlbumsGlobalModel({this.listtypeItemList = const []});

List<ListtypeItemModel> listtypeItemList;

TopAlbumsGlobalModel copyWith({List<ListtypeItemModel>? listtypeItemList}) { return TopAlbumsGlobalModel(
listtypeItemList : listtypeItemList ?? this.listtypeItemList,
); } 
@override List<Object?> get props => [listtypeItemList];
 }
