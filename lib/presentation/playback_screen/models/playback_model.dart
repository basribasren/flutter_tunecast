import 'package:equatable/equatable.dart';import 'playback_item_model.dart';
// ignore: must_be_immutable
class PlaybackModel extends Equatable {PlaybackModel({this.playbackItemList = const []});

List<PlaybackItemModel> playbackItemList;

PlaybackModel copyWith({List<PlaybackItemModel>? playbackItemList}) { return PlaybackModel(
playbackItemList : playbackItemList ?? this.playbackItemList,
); } 
@override List<Object?> get props => [playbackItemList];
 }
