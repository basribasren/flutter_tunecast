// ignore_for_file: must_be_immutable

part of 'artists_bloc.dart';

@immutable
abstract class ArtistsEvent extends Equatable {}

class ArtistsInitialEvent extends ArtistsEvent {
  @override
  List<Object?> get props => [];
}
