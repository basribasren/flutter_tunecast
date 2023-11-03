import 'package:equatable/equatable.dart';import 'listartistname_item_model.dart';
// ignore: must_be_immutable
class PlaylistDetailsOneModel extends Equatable {PlaylistDetailsOneModel({this.listartistnameItemList = const []});

List<ListartistnameItemModel> listartistnameItemList;

PlaylistDetailsOneModel copyWith({List<ListartistnameItemModel>? listartistnameItemList}) { return PlaylistDetailsOneModel(
listartistnameItemList : listartistnameItemList ?? this.listartistnameItemList,
); } 
@override List<Object?> get props => [listartistnameItemList];
 }
