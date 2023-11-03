// ignore_for_file: must_be_immutable

part of 'sign_up_bloc.dart';

class SignUpState extends Equatable {
  SignUpState({
    this.statusDefaultController,
    this.statusDefaultOneController,
    this.isShowPassword = true,
    this.isCheckbox = false,
    this.signUpModelObj,
  });

  TextEditingController? statusDefaultController;

  TextEditingController? statusDefaultOneController;

  SignUpModel? signUpModelObj;

  bool isShowPassword;

  bool isCheckbox;

  @override
  List<Object?> get props => [
        statusDefaultController,
        statusDefaultOneController,
        isShowPassword,
        isCheckbox,
        signUpModelObj,
      ];
  SignUpState copyWith({
    TextEditingController? statusDefaultController,
    TextEditingController? statusDefaultOneController,
    bool? isShowPassword,
    bool? isCheckbox,
    SignUpModel? signUpModelObj,
  }) {
    return SignUpState(
      statusDefaultController:
          statusDefaultController ?? this.statusDefaultController,
      statusDefaultOneController:
          statusDefaultOneController ?? this.statusDefaultOneController,
      isShowPassword: isShowPassword ?? this.isShowPassword,
      isCheckbox: isCheckbox ?? this.isCheckbox,
      signUpModelObj: signUpModelObj ?? this.signUpModelObj,
    );
  }
}
