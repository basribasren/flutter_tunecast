import 'package:equatable/equatable.dart';
// ignore: must_be_immutable
class PlaybackItemModel extends Equatable {PlaybackItemModel({this.typeTxt = "Automix", this.descriptionTxt = "Allows seamless transitions between songs on select playlists.", this.isSelectedSwitch = false, this.id});

String typeTxt;

String descriptionTxt;

bool isSelectedSwitch;

String? id;

PlaybackItemModel copyWith({String? typeTxt, String? descriptionTxt, bool? isSelectedSwitch, String? id}) { return PlaybackItemModel(
typeTxt : typeTxt ?? this.typeTxt,
descriptionTxt : descriptionTxt ?? this.descriptionTxt,
isSelectedSwitch : isSelectedSwitch ?? this.isSelectedSwitch,
id : id ?? this.id,
); } 
@override List<Object?> get props => [typeTxt,descriptionTxt,isSelectedSwitch,id];
 }
