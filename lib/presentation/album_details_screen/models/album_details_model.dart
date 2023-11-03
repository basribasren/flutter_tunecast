import 'package:equatable/equatable.dart';import 'albumdetails_item_model.dart';
// ignore: must_be_immutable
class AlbumDetailsModel extends Equatable {AlbumDetailsModel({this.albumdetailsItemList = const []});

List<AlbumdetailsItemModel> albumdetailsItemList;

AlbumDetailsModel copyWith({List<AlbumdetailsItemModel>? albumdetailsItemList}) { return AlbumDetailsModel(
albumdetailsItemList : albumdetailsItemList ?? this.albumdetailsItemList,
); } 
@override List<Object?> get props => [albumdetailsItemList];
 }
