import 'package:equatable/equatable.dart';import 'listcountry_item_model.dart';import 'listpodcasttitle1_item_model.dart';
// ignore: must_be_immutable
class SearchResultPodcastModel extends Equatable {SearchResultPodcastModel({this.listcountryItemList = const [], this.listpodcasttitle1ItemList = const []});

List<ListcountryItemModel> listcountryItemList;

List<Listpodcasttitle1ItemModel> listpodcasttitle1ItemList;

SearchResultPodcastModel copyWith({List<ListcountryItemModel>? listcountryItemList, List<Listpodcasttitle1ItemModel>? listpodcasttitle1ItemList}) { return SearchResultPodcastModel(
listcountryItemList : listcountryItemList ?? this.listcountryItemList,
listpodcasttitle1ItemList : listpodcasttitle1ItemList ?? this.listpodcasttitle1ItemList,
); } 
@override List<Object?> get props => [listcountryItemList,listpodcasttitle1ItemList];
 }
