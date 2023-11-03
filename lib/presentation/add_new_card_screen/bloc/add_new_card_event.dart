// ignore_for_file: must_be_immutable

part of 'add_new_card_bloc.dart';

@immutable
abstract class AddNewCardEvent extends Equatable {}

class AddNewCardInitialEvent extends AddNewCardEvent {
  @override
  List<Object?> get props => [];
}

///event for change date
class ChangeDateEvent extends AddNewCardEvent {
  ChangeDateEvent({required this.date});

  String date;

  @override
  List<Object?> get props => [
        date,
      ];
}
