import 'package:equatable/equatable.dart';import 'listsongtitle_item_model.dart';
// ignore: must_be_immutable
class SongPlayOverScreenModel extends Equatable {SongPlayOverScreenModel({this.listsongtitleItemList = const []});

List<ListsongtitleItemModel> listsongtitleItemList;

SongPlayOverScreenModel copyWith({List<ListsongtitleItemModel>? listsongtitleItemList}) { return SongPlayOverScreenModel(
listsongtitleItemList : listsongtitleItemList ?? this.listsongtitleItemList,
); } 
@override List<Object?> get props => [listsongtitleItemList];
 }
