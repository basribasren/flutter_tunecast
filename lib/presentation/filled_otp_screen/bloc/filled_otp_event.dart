// ignore_for_file: must_be_immutable

part of 'filled_otp_bloc.dart';

@immutable
abstract class FilledOtpEvent extends Equatable {}

class FilledOtpInitialEvent extends FilledOtpEvent {
  @override
  List<Object?> get props => [];
}

///event for OTP auto fill
class ChangeOTPEvent extends FilledOtpEvent {
  ChangeOTPEvent({required this.code});

  String code;

  @override
  List<Object?> get props => [
        code,
      ];
}
