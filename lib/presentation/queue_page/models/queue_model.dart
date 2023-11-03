import 'package:equatable/equatable.dart';import 'queue_item_model.dart';
// ignore: must_be_immutable
class QueueModel extends Equatable {QueueModel({this.queueItemList = const []});

List<QueueItemModel> queueItemList;

QueueModel copyWith({List<QueueItemModel>? queueItemList}) { return QueueModel(
queueItemList : queueItemList ?? this.queueItemList,
); } 
@override List<Object?> get props => [queueItemList];
 }
