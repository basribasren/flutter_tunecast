// ignore_for_file: must_be_immutable

part of 'song_details_bloc.dart';

@immutable
abstract class SongDetailsEvent extends Equatable {}

class SongDetailsInitialEvent extends SongDetailsEvent {
  @override
  List<Object?> get props => [];
}
