// ignore_for_file: must_be_immutable

part of 'song_play_bloc.dart';

@immutable
abstract class SongPlayEvent extends Equatable {}

class SongPlayInitialEvent extends SongPlayEvent {
  @override
  List<Object?> get props => [];
}
