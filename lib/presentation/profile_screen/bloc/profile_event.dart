// ignore_for_file: must_be_immutable

part of 'profile_bloc.dart';

@immutable
abstract class ProfileEvent extends Equatable {}

class ProfileInitialEvent extends ProfileEvent {
  @override
  List<Object?> get props => [];
}

///event for change date
class ChangeDateEvent extends ProfileEvent {
  ChangeDateEvent({required this.date});

  String date;

  @override
  List<Object?> get props => [
        date,
      ];
}

///event for change country code
class ChangeCountryEvent extends ProfileEvent {
  ChangeCountryEvent({required this.value});

  Country value;

  @override
  List<Object?> get props => [
        value,
      ];
}
