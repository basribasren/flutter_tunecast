import 'package:equatable/equatable.dart';import 'gridname_item_model.dart';
// ignore: must_be_immutable
class PopularArtistsModel extends Equatable {PopularArtistsModel({this.gridnameItemList = const []});

List<GridnameItemModel> gridnameItemList;

PopularArtistsModel copyWith({List<GridnameItemModel>? gridnameItemList}) { return PopularArtistsModel(
gridnameItemList : gridnameItemList ?? this.gridnameItemList,
); } 
@override List<Object?> get props => [gridnameItemList];
 }
