import 'package:equatable/equatable.dart';import 'listpodcasttitle2_item_model.dart';
// ignore: must_be_immutable
class PodcastDetailsModel extends Equatable {PodcastDetailsModel({this.listpodcasttitle2ItemList = const []});

List<Listpodcasttitle2ItemModel> listpodcasttitle2ItemList;

PodcastDetailsModel copyWith({List<Listpodcasttitle2ItemModel>? listpodcasttitle2ItemList}) { return PodcastDetailsModel(
listpodcasttitle2ItemList : listpodcasttitle2ItemList ?? this.listpodcasttitle2ItemList,
); } 
@override List<Object?> get props => [listpodcasttitle2ItemList];
 }
