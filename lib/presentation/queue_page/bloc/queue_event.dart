// ignore_for_file: must_be_immutable

part of 'queue_bloc.dart';

@immutable
abstract class QueueEvent extends Equatable {}

class QueueInitialEvent extends QueueEvent {
  @override
  List<Object?> get props => [];
}
