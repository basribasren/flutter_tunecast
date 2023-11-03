import 'package:equatable/equatable.dart';import 'historymusic_item_model.dart';
// ignore: must_be_immutable
class HistoryMusicModel extends Equatable {HistoryMusicModel({this.historymusicItemList = const []});

List<HistorymusicItemModel> historymusicItemList;

HistoryMusicModel copyWith({List<HistorymusicItemModel>? historymusicItemList}) { return HistoryMusicModel(
historymusicItemList : historymusicItemList ?? this.historymusicItemList,
); } 
@override List<Object?> get props => [historymusicItemList];
 }
