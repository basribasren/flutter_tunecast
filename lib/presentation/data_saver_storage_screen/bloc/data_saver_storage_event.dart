// ignore_for_file: must_be_immutable

part of 'data_saver_storage_bloc.dart';

@immutable
abstract class DataSaverStorageEvent extends Equatable {}

class DataSaverStorageInitialEvent extends DataSaverStorageEvent {
  @override
  List<Object?> get props => [];
}

///event for change switch
class ChangeSwitchEvent extends DataSaverStorageEvent {
  ChangeSwitchEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///event for change switch
class ChangeSwitch1Event extends DataSaverStorageEvent {
  ChangeSwitch1Event({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///event for change switch
class ChangeSwitch2Event extends DataSaverStorageEvent {
  ChangeSwitch2Event({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}
