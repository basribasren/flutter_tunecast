import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/queue_item_model.dart';
import 'package:basri_s_application28/presentation/queue_page/models/queue_model.dart';
part 'queue_event.dart';
part 'queue_state.dart';

class QueueBloc extends Bloc<QueueEvent, QueueState> {
  QueueBloc(QueueState initialState) : super(initialState) {
    on<QueueInitialEvent>(_onInitialize);
  }

  _onInitialize(
    QueueInitialEvent event,
    Emitter<QueueState> emit,
  ) async {
    emit(state.copyWith(
        queueModelObj: state.queueModelObj?.copyWith(
      queueItemList: fillQueueItemList(),
    )));
  }

  List<QueueItemModel> fillQueueItemList() {
    return List.generate(5, (index) => QueueItemModel());
  }
}
