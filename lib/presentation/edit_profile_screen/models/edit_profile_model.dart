import 'package:equatable/equatable.dart';import 'package:basri_s_application28/data/models/selectionPopupModel/selection_popup_model.dart';
// ignore: must_be_immutable
class EditProfileModel extends Equatable {EditProfileModel({this.selectedDateTxt, this.dateTxt = "", this.dropdownItemList = const []});

DateTime? selectedDateTxt;

String dateTxt;

List<SelectionPopupModel> dropdownItemList;

EditProfileModel copyWith({DateTime? selectedDateTxt, String? dateTxt, List<SelectionPopupModel>? dropdownItemList}) { return EditProfileModel(
selectedDateTxt : selectedDateTxt ?? this.selectedDateTxt,
dateTxt : dateTxt ?? this.dateTxt,
dropdownItemList : dropdownItemList ?? this.dropdownItemList,
); } 
@override List<Object?> get props => [selectedDateTxt,dateTxt,dropdownItemList];
 }
