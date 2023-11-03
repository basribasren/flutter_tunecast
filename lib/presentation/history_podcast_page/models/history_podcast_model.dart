import 'package:equatable/equatable.dart';import 'listpodcasttitle3_item_model.dart';
// ignore: must_be_immutable
class HistoryPodcastModel extends Equatable {HistoryPodcastModel({this.listpodcasttitle3ItemList = const []});

List<Listpodcasttitle3ItemModel> listpodcasttitle3ItemList;

HistoryPodcastModel copyWith({List<Listpodcasttitle3ItemModel>? listpodcasttitle3ItemList}) { return HistoryPodcastModel(
listpodcasttitle3ItemList : listpodcasttitle3ItemList ?? this.listpodcasttitle3ItemList,
); } 
@override List<Object?> get props => [listpodcasttitle3ItemList];
 }
