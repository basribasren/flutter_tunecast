// ignore_for_file: must_be_immutable

part of 'add_new_card_bloc.dart';

class AddNewCardState extends Equatable {
  AddNewCardState({
    this.statusFillTypeDefaultController,
    this.statusFillTypeDefaultOneController,
    this.statusFillTypeDefaultTwoController,
    this.addNewCardModelObj,
  });

  TextEditingController? statusFillTypeDefaultController;

  TextEditingController? statusFillTypeDefaultOneController;

  TextEditingController? statusFillTypeDefaultTwoController;

  AddNewCardModel? addNewCardModelObj;

  @override
  List<Object?> get props => [
        statusFillTypeDefaultController,
        statusFillTypeDefaultOneController,
        statusFillTypeDefaultTwoController,
        addNewCardModelObj,
      ];
  AddNewCardState copyWith({
    TextEditingController? statusFillTypeDefaultController,
    TextEditingController? statusFillTypeDefaultOneController,
    TextEditingController? statusFillTypeDefaultTwoController,
    AddNewCardModel? addNewCardModelObj,
  }) {
    return AddNewCardState(
      statusFillTypeDefaultController: statusFillTypeDefaultController ??
          this.statusFillTypeDefaultController,
      statusFillTypeDefaultOneController: statusFillTypeDefaultOneController ??
          this.statusFillTypeDefaultOneController,
      statusFillTypeDefaultTwoController: statusFillTypeDefaultTwoController ??
          this.statusFillTypeDefaultTwoController,
      addNewCardModelObj: addNewCardModelObj ?? this.addNewCardModelObj,
    );
  }
}
