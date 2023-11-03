import 'package:equatable/equatable.dart';import 'listellipseone_item_model.dart';
// ignore: must_be_immutable
class ArtistSearchResultModel extends Equatable {ArtistSearchResultModel({this.listellipseoneItemList = const []});

List<ListellipseoneItemModel> listellipseoneItemList;

ArtistSearchResultModel copyWith({List<ListellipseoneItemModel>? listellipseoneItemList}) { return ArtistSearchResultModel(
listellipseoneItemList : listellipseoneItemList ?? this.listellipseoneItemList,
); } 
@override List<Object?> get props => [listellipseoneItemList];
 }
