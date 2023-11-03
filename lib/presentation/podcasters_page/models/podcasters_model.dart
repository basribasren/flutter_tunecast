import 'package:equatable/equatable.dart';import 'podcasters_item_model.dart';
// ignore: must_be_immutable
class PodcastersModel extends Equatable {PodcastersModel({this.podcastersItemList = const []});

List<PodcastersItemModel> podcastersItemList;

PodcastersModel copyWith({List<PodcastersItemModel>? podcastersItemList}) { return PodcastersModel(
podcastersItemList : podcastersItemList ?? this.podcastersItemList,
); } 
@override List<Object?> get props => [podcastersItemList];
 }
