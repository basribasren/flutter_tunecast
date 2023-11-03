// ignore_for_file: must_be_immutable

part of 'artist_details_bloc.dart';

@immutable
abstract class ArtistDetailsEvent extends Equatable {}

class ArtistDetailsInitialEvent extends ArtistDetailsEvent {
  @override
  List<Object?> get props => [];
}
