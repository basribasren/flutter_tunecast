// ignore_for_file: must_be_immutable

part of 'playlist_details_one_bloc.dart';

@immutable
abstract class PlaylistDetailsOneEvent extends Equatable {}

class PlaylistDetailsOneInitialEvent extends PlaylistDetailsOneEvent {
  @override
  List<Object?> get props => [];
}
