import 'package:equatable/equatable.dart';import 'albums_item_model.dart';
// ignore: must_be_immutable
class AlbumsModel extends Equatable {AlbumsModel({this.albumsItemList = const []});

List<AlbumsItemModel> albumsItemList;

AlbumsModel copyWith({List<AlbumsItemModel>? albumsItemList}) { return AlbumsModel(
albumsItemList : albumsItemList ?? this.albumsItemList,
); } 
@override List<Object?> get props => [albumsItemList];
 }
