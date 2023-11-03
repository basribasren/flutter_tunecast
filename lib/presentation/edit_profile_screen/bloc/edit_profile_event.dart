// ignore_for_file: must_be_immutable

part of 'edit_profile_bloc.dart';

@immutable
abstract class EditProfileEvent extends Equatable {}

class EditProfileInitialEvent extends EditProfileEvent {
  @override
  List<Object?> get props => [];
}

///event for change date
class ChangeDateEvent extends EditProfileEvent {
  ChangeDateEvent({required this.date});

  String date;

  @override
  List<Object?> get props => [
        date,
      ];
}

///event for dropdown selection
class ChangeDropDownEvent extends EditProfileEvent {
  ChangeDropDownEvent({required this.value});

  SelectionPopupModel value;

  @override
  List<Object?> get props => [
        value,
      ];
}
