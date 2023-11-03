import 'package:equatable/equatable.dart';import 'listloremipsumdolor1_item_model.dart';import 'artists_item_model.dart';import 'podcasts_item_model.dart';
// ignore: must_be_immutable
class PodcastsModel extends Equatable {PodcastsModel({this.listloremipsumdolor1ItemList = const [], this.artistsItemList = const [], this.podcastsItemList = const []});

List<Listloremipsumdolor1ItemModel> listloremipsumdolor1ItemList;

List<ArtistsItemModel> artistsItemList;

List<PodcastsItemModel> podcastsItemList;

PodcastsModel copyWith({List<Listloremipsumdolor1ItemModel>? listloremipsumdolor1ItemList, List<ArtistsItemModel>? artistsItemList, List<PodcastsItemModel>? podcastsItemList}) { return PodcastsModel(
listloremipsumdolor1ItemList : listloremipsumdolor1ItemList ?? this.listloremipsumdolor1ItemList,
artistsItemList : artistsItemList ?? this.artistsItemList,
podcastsItemList : podcastsItemList ?? this.podcastsItemList,
); } 
@override List<Object?> get props => [listloremipsumdolor1ItemList,artistsItemList,podcastsItemList];
 }
