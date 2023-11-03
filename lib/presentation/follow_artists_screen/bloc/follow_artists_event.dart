// ignore_for_file: must_be_immutable

part of 'follow_artists_bloc.dart';

@immutable
abstract class FollowArtistsEvent extends Equatable {}

class FollowArtistsInitialEvent extends FollowArtistsEvent {
  @override
  List<Object?> get props => [];
}
