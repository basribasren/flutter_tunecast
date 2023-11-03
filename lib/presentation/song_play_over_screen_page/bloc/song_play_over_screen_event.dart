// ignore_for_file: must_be_immutable

part of 'song_play_over_screen_bloc.dart';

@immutable
abstract class SongPlayOverScreenEvent extends Equatable {}

class SongPlayOverScreenInitialEvent extends SongPlayOverScreenEvent {
  @override
  List<Object?> get props => [];
}
