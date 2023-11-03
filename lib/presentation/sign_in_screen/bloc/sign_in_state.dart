// ignore_for_file: must_be_immutable

part of 'sign_in_bloc.dart';

class SignInState extends Equatable {
  SignInState({
    this.statusDefaultController,
    this.statusDefaultOneController,
    this.isShowPassword = true,
    this.isCheckbox = false,
    this.signInModelObj,
  });

  TextEditingController? statusDefaultController;

  TextEditingController? statusDefaultOneController;

  SignInModel? signInModelObj;

  bool isShowPassword;

  bool isCheckbox;

  @override
  List<Object?> get props => [
        statusDefaultController,
        statusDefaultOneController,
        isShowPassword,
        isCheckbox,
        signInModelObj,
      ];
  SignInState copyWith({
    TextEditingController? statusDefaultController,
    TextEditingController? statusDefaultOneController,
    bool? isShowPassword,
    bool? isCheckbox,
    SignInModel? signInModelObj,
  }) {
    return SignInState(
      statusDefaultController:
          statusDefaultController ?? this.statusDefaultController,
      statusDefaultOneController:
          statusDefaultOneController ?? this.statusDefaultOneController,
      isShowPassword: isShowPassword ?? this.isShowPassword,
      isCheckbox: isCheckbox ?? this.isCheckbox,
      signInModelObj: signInModelObj ?? this.signInModelObj,
    );
  }
}
