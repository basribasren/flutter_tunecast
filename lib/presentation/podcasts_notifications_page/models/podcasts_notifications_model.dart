import 'package:equatable/equatable.dart';import 'listpodcasttitle_item_model.dart';import 'listsixteen_item_model.dart';
// ignore: must_be_immutable
class PodcastsNotificationsModel extends Equatable {PodcastsNotificationsModel({this.listpodcasttitleItemList = const [], this.listsixteenItemList = const []});

List<ListpodcasttitleItemModel> listpodcasttitleItemList;

List<ListsixteenItemModel> listsixteenItemList;

PodcastsNotificationsModel copyWith({List<ListpodcasttitleItemModel>? listpodcasttitleItemList, List<ListsixteenItemModel>? listsixteenItemList}) { return PodcastsNotificationsModel(
listpodcasttitleItemList : listpodcasttitleItemList ?? this.listpodcasttitleItemList,
listsixteenItemList : listsixteenItemList ?? this.listsixteenItemList,
); } 
@override List<Object?> get props => [listpodcasttitleItemList,listsixteenItemList];
 }
