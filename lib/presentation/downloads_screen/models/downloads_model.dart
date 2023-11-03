import 'package:equatable/equatable.dart';import 'downloads_item_model.dart';
// ignore: must_be_immutable
class DownloadsModel extends Equatable {DownloadsModel({this.downloadsItemList = const []});

List<DownloadsItemModel> downloadsItemList;

DownloadsModel copyWith({List<DownloadsItemModel>? downloadsItemList}) { return DownloadsModel(
downloadsItemList : downloadsItemList ?? this.downloadsItemList,
); } 
@override List<Object?> get props => [downloadsItemList];
 }
