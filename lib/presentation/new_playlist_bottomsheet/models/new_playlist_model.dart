import 'package:equatable/equatable.dart';import 'package:basri_s_application28/data/models/selectionPopupModel/selection_popup_model.dart';
// ignore: must_be_immutable
class NewPlaylistModel extends Equatable {NewPlaylistModel({this.dropdownItemList = const []});

List<SelectionPopupModel> dropdownItemList;

NewPlaylistModel copyWith({List<SelectionPopupModel>? dropdownItemList}) { return NewPlaylistModel(
dropdownItemList : dropdownItemList ?? this.dropdownItemList,
); } 
@override List<Object?> get props => [dropdownItemList];
 }
