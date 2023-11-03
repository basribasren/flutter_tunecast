import 'package:equatable/equatable.dart';
// ignore: must_be_immutable
class AddNewCardModel extends Equatable {AddNewCardModel({this.selectedDateTxt, this.dateTxt = ""});

DateTime? selectedDateTxt;

String dateTxt;

AddNewCardModel copyWith({DateTime? selectedDateTxt, String? dateTxt}) { return AddNewCardModel(
selectedDateTxt : selectedDateTxt ?? this.selectedDateTxt,
dateTxt : dateTxt ?? this.dateTxt,
); } 
@override List<Object?> get props => [selectedDateTxt,dateTxt];
 }
