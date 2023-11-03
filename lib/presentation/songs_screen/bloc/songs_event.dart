// ignore_for_file: must_be_immutable

part of 'songs_bloc.dart';

@immutable
abstract class SongsEvent extends Equatable {}

class SongsInitialEvent extends SongsEvent {
  @override
  List<Object?> get props => [];
}
