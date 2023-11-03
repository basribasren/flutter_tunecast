// ignore_for_file: must_be_immutable

part of 'queue_bloc.dart';

class QueueState extends Equatable {
  QueueState({this.queueModelObj});

  QueueModel? queueModelObj;

  @override
  List<Object?> get props => [
        queueModelObj,
      ];
  QueueState copyWith({QueueModel? queueModelObj}) {
    return QueueState(
      queueModelObj: queueModelObj ?? this.queueModelObj,
    );
  }
}
