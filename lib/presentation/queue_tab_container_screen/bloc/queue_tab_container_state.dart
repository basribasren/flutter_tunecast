// ignore_for_file: must_be_immutable

part of 'queue_tab_container_bloc.dart';

class QueueTabContainerState extends Equatable {
  QueueTabContainerState({this.queueTabContainerModelObj});

  QueueTabContainerModel? queueTabContainerModelObj;

  @override
  List<Object?> get props => [
        queueTabContainerModelObj,
      ];
  QueueTabContainerState copyWith(
      {QueueTabContainerModel? queueTabContainerModelObj}) {
    return QueueTabContainerState(
      queueTabContainerModelObj:
          queueTabContainerModelObj ?? this.queueTabContainerModelObj,
    );
  }
}
