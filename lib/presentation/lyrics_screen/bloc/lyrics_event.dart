// ignore_for_file: must_be_immutable

part of 'lyrics_bloc.dart';

@immutable
abstract class LyricsEvent extends Equatable {}

class LyricsInitialEvent extends LyricsEvent {
  @override
  List<Object?> get props => [];
}
