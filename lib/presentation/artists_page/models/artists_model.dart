import 'package:equatable/equatable.dart';import 'artists1_item_model.dart';
// ignore: must_be_immutable
class ArtistsModel extends Equatable {ArtistsModel({this.artists1ItemList = const []});

List<Artists1ItemModel> artists1ItemList;

ArtistsModel copyWith({List<Artists1ItemModel>? artists1ItemList}) { return ArtistsModel(
artists1ItemList : artists1ItemList ?? this.artists1ItemList,
); } 
@override List<Object?> get props => [artists1ItemList];
 }
