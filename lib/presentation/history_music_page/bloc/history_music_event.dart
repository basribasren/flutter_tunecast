// ignore_for_file: must_be_immutable

part of 'history_music_bloc.dart';

@immutable
abstract class HistoryMusicEvent extends Equatable {}

class HistoryMusicInitialEvent extends HistoryMusicEvent {
  @override
  List<Object?> get props => [];
}
