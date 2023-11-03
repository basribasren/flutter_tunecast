import 'package:equatable/equatable.dart';import 'followartists_item_model.dart';
// ignore: must_be_immutable
class FollowArtistsModel extends Equatable {FollowArtistsModel({this.followartistsItemList = const []});

List<FollowartistsItemModel> followartistsItemList;

FollowArtistsModel copyWith({List<FollowartistsItemModel>? followartistsItemList}) { return FollowArtistsModel(
followartistsItemList : followartistsItemList ?? this.followartistsItemList,
); } 
@override List<Object?> get props => [followartistsItemList];
 }
