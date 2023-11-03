// ignore_for_file: must_be_immutable

part of 'set_fingerprint_bloc.dart';

@immutable
abstract class SetFingerprintEvent extends Equatable {}

class SetFingerprintInitialEvent extends SetFingerprintEvent {
  @override
  List<Object?> get props => [];
}
