// ignore_for_file: must_be_immutable

part of 'songs_notifications_bloc.dart';

@immutable
abstract class SongsNotificationsEvent extends Equatable {}

class SongsNotificationsInitialEvent extends SongsNotificationsEvent {
  @override
  List<Object?> get props => [];
}
