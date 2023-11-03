import 'package:equatable/equatable.dart';import 'artistdetails_item_model.dart';
// ignore: must_be_immutable
class ArtistDetailsModel extends Equatable {ArtistDetailsModel({this.artistdetailsItemList = const []});

List<ArtistdetailsItemModel> artistdetailsItemList;

ArtistDetailsModel copyWith({List<ArtistdetailsItemModel>? artistdetailsItemList}) { return ArtistDetailsModel(
artistdetailsItemList : artistdetailsItemList ?? this.artistdetailsItemList,
); } 
@override List<Object?> get props => [artistdetailsItemList];
 }
