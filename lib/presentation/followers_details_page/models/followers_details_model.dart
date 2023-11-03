import 'package:equatable/equatable.dart';import 'listname3_item_model.dart';
// ignore: must_be_immutable
class FollowersDetailsModel extends Equatable {FollowersDetailsModel({this.listname3ItemList = const []});

List<Listname3ItemModel> listname3ItemList;

FollowersDetailsModel copyWith({List<Listname3ItemModel>? listname3ItemList}) { return FollowersDetailsModel(
listname3ItemList : listname3ItemList ?? this.listname3ItemList,
); } 
@override List<Object?> get props => [listname3ItemList];
 }
