import 'package:equatable/equatable.dart';import 'songs_item_model.dart';
// ignore: must_be_immutable
class SongsModel extends Equatable {SongsModel({this.songsItemList = const []});

List<SongsItemModel> songsItemList;

SongsModel copyWith({List<SongsItemModel>? songsItemList}) { return SongsModel(
songsItemList : songsItemList ?? this.songsItemList,
); } 
@override List<Object?> get props => [songsItemList];
 }
