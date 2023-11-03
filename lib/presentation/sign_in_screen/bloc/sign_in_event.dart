// ignore_for_file: must_be_immutable

part of 'sign_in_bloc.dart';

@immutable
abstract class SignInEvent extends Equatable {}

class SignInInitialEvent extends SignInEvent {
  @override
  List<Object?> get props => [];
}

class GoogleAuthEvent extends SignInEvent {
  GoogleAuthEvent();

  @override
  List<Object?> get props => [];
}

///event for change password visibility
class ChangePasswordVisibilityEvent extends SignInEvent {
  ChangePasswordVisibilityEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///event for change checkbox
class ChangeCheckBoxEvent extends SignInEvent {
  ChangeCheckBoxEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}
