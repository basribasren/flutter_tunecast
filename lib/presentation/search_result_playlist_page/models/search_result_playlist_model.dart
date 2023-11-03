import 'package:equatable/equatable.dart';import 'gridlanguage_item_model.dart';
// ignore: must_be_immutable
class SearchResultPlaylistModel extends Equatable {SearchResultPlaylistModel({this.gridlanguageItemList = const []});

List<GridlanguageItemModel> gridlanguageItemList;

SearchResultPlaylistModel copyWith({List<GridlanguageItemModel>? gridlanguageItemList}) { return SearchResultPlaylistModel(
gridlanguageItemList : gridlanguageItemList ?? this.gridlanguageItemList,
); } 
@override List<Object?> get props => [gridlanguageItemList];
 }
