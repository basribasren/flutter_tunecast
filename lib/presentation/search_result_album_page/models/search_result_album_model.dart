import 'package:equatable/equatable.dart';import 'gridsweetener_item_model.dart';
// ignore: must_be_immutable
class SearchResultAlbumModel extends Equatable {SearchResultAlbumModel({this.gridsweetenerItemList = const []});

List<GridsweetenerItemModel> gridsweetenerItemList;

SearchResultAlbumModel copyWith({List<GridsweetenerItemModel>? gridsweetenerItemList}) { return SearchResultAlbumModel(
gridsweetenerItemList : gridsweetenerItemList ?? this.gridsweetenerItemList,
); } 
@override List<Object?> get props => [gridsweetenerItemList];
 }
