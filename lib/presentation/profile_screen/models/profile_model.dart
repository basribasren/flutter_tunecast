import 'package:equatable/equatable.dart';
// ignore: must_be_immutable
class ProfileModel extends Equatable {ProfileModel({this.selectedLabelTxt, this.labelTxt = ""});

DateTime? selectedLabelTxt;

String labelTxt;

ProfileModel copyWith({DateTime? selectedLabelTxt, String? labelTxt}) { return ProfileModel(
selectedLabelTxt : selectedLabelTxt ?? this.selectedLabelTxt,
labelTxt : labelTxt ?? this.labelTxt,
); } 
@override List<Object?> get props => [selectedLabelTxt,labelTxt];
 }
