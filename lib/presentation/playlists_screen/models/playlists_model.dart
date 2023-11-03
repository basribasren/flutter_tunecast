import 'package:equatable/equatable.dart';import 'playlists_item_model.dart';
// ignore: must_be_immutable
class PlaylistsModel extends Equatable {PlaylistsModel({this.playlistsItemList = const []});

List<PlaylistsItemModel> playlistsItemList;

PlaylistsModel copyWith({List<PlaylistsItemModel>? playlistsItemList}) { return PlaylistsModel(
playlistsItemList : playlistsItemList ?? this.playlistsItemList,
); } 
@override List<Object?> get props => [playlistsItemList];
 }
