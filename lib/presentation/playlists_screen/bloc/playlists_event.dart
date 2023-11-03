// ignore_for_file: must_be_immutable

part of 'playlists_bloc.dart';

@immutable
abstract class PlaylistsEvent extends Equatable {}

class PlaylistsInitialEvent extends PlaylistsEvent {
  @override
  List<Object?> get props => [];
}
