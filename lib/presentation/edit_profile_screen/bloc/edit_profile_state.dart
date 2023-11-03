// ignore_for_file: must_be_immutable

part of 'edit_profile_bloc.dart';

class EditProfileState extends Equatable {
  EditProfileState({
    this.statusFillTypeDefaultController,
    this.statusFillTypeDefaultOneController,
    this.emailController,
    this.statusFillTypePhoneController,
    this.selectedDropDownValue,
    this.editProfileModelObj,
  });

  TextEditingController? statusFillTypeDefaultController;

  TextEditingController? statusFillTypeDefaultOneController;

  TextEditingController? emailController;

  TextEditingController? statusFillTypePhoneController;

  SelectionPopupModel? selectedDropDownValue;

  EditProfileModel? editProfileModelObj;

  @override
  List<Object?> get props => [
        statusFillTypeDefaultController,
        statusFillTypeDefaultOneController,
        emailController,
        statusFillTypePhoneController,
        selectedDropDownValue,
        editProfileModelObj,
      ];
  EditProfileState copyWith({
    TextEditingController? statusFillTypeDefaultController,
    TextEditingController? statusFillTypeDefaultOneController,
    TextEditingController? emailController,
    TextEditingController? statusFillTypePhoneController,
    SelectionPopupModel? selectedDropDownValue,
    EditProfileModel? editProfileModelObj,
  }) {
    return EditProfileState(
      statusFillTypeDefaultController: statusFillTypeDefaultController ??
          this.statusFillTypeDefaultController,
      statusFillTypeDefaultOneController: statusFillTypeDefaultOneController ??
          this.statusFillTypeDefaultOneController,
      emailController: emailController ?? this.emailController,
      statusFillTypePhoneController:
          statusFillTypePhoneController ?? this.statusFillTypePhoneController,
      selectedDropDownValue:
          selectedDropDownValue ?? this.selectedDropDownValue,
      editProfileModelObj: editProfileModelObj ?? this.editProfileModelObj,
    );
  }
}
