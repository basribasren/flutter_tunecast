// ignore_for_file: must_be_immutable

part of 'create_new_password_bloc.dart';

class CreateNewPasswordState extends Equatable {
  CreateNewPasswordState({
    this.passwordController,
    this.passwordOneController,
    this.isShowPassword = true,
    this.isShowPassword1 = true,
    this.isCheckbox = false,
    this.createNewPasswordModelObj,
  });

  TextEditingController? passwordController;

  TextEditingController? passwordOneController;

  CreateNewPasswordModel? createNewPasswordModelObj;

  bool isShowPassword;

  bool isShowPassword1;

  bool isCheckbox;

  @override
  List<Object?> get props => [
        passwordController,
        passwordOneController,
        isShowPassword,
        isShowPassword1,
        isCheckbox,
        createNewPasswordModelObj,
      ];
  CreateNewPasswordState copyWith({
    TextEditingController? passwordController,
    TextEditingController? passwordOneController,
    bool? isShowPassword,
    bool? isShowPassword1,
    bool? isCheckbox,
    CreateNewPasswordModel? createNewPasswordModelObj,
  }) {
    return CreateNewPasswordState(
      passwordController: passwordController ?? this.passwordController,
      passwordOneController:
          passwordOneController ?? this.passwordOneController,
      isShowPassword: isShowPassword ?? this.isShowPassword,
      isShowPassword1: isShowPassword1 ?? this.isShowPassword1,
      isCheckbox: isCheckbox ?? this.isCheckbox,
      createNewPasswordModelObj:
          createNewPasswordModelObj ?? this.createNewPasswordModelObj,
    );
  }
}
