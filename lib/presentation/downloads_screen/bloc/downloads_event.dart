// ignore_for_file: must_be_immutable

part of 'downloads_bloc.dart';

@immutable
abstract class DownloadsEvent extends Equatable {}

class DownloadsInitialEvent extends DownloadsEvent {
  @override
  List<Object?> get props => [];
}
