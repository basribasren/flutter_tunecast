// ignore_for_file: must_be_immutable

part of 'queue_tab_container_bloc.dart';

@immutable
abstract class QueueTabContainerEvent extends Equatable {}

class QueueTabContainerInitialEvent extends QueueTabContainerEvent {
  @override
  List<Object?> get props => [];
}
