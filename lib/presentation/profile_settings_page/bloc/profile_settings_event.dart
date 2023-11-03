// ignore_for_file: must_be_immutable

part of 'profile_settings_bloc.dart';

@immutable
abstract class ProfileSettingsEvent extends Equatable {}

class ProfileSettingsInitialEvent extends ProfileSettingsEvent {
  @override
  List<Object?> get props => [];
}

///event for change switch
class ChangeSwitchEvent extends ProfileSettingsEvent {
  ChangeSwitchEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}
