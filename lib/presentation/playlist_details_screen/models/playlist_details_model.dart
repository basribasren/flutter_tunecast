import 'package:equatable/equatable.dart';import 'listtitle_item_model.dart';
// ignore: must_be_immutable
class PlaylistDetailsModel extends Equatable {PlaylistDetailsModel({this.listtitleItemList = const []});

List<ListtitleItemModel> listtitleItemList;

PlaylistDetailsModel copyWith({List<ListtitleItemModel>? listtitleItemList}) { return PlaylistDetailsModel(
listtitleItemList : listtitleItemList ?? this.listtitleItemList,
); } 
@override List<Object?> get props => [listtitleItemList];
 }
