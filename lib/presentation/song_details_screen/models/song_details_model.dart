import 'package:equatable/equatable.dart';import 'songdetails_item_model.dart';
// ignore: must_be_immutable
class SongDetailsModel extends Equatable {SongDetailsModel({this.songdetailsItemList = const []});

List<SongdetailsItemModel> songdetailsItemList;

SongDetailsModel copyWith({List<SongdetailsItemModel>? songdetailsItemList}) { return SongDetailsModel(
songdetailsItemList : songdetailsItemList ?? this.songdetailsItemList,
); } 
@override List<Object?> get props => [songdetailsItemList];
 }
