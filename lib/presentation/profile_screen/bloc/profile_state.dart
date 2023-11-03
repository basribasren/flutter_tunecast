// ignore_for_file: must_be_immutable

part of 'profile_bloc.dart';

class ProfileState extends Equatable {
  ProfileState({
    this.statusDefaultController,
    this.statusDefaultOneController,
    this.statusDefaultTwoController,
    this.phoneNumberController,
    this.selectedCountry,
    this.profileModelObj,
  });

  TextEditingController? statusDefaultController;

  TextEditingController? statusDefaultOneController;

  TextEditingController? statusDefaultTwoController;

  TextEditingController? phoneNumberController;

  ProfileModel? profileModelObj;

  Country? selectedCountry;

  @override
  List<Object?> get props => [
        statusDefaultController,
        statusDefaultOneController,
        statusDefaultTwoController,
        phoneNumberController,
        selectedCountry,
        profileModelObj,
      ];
  ProfileState copyWith({
    TextEditingController? statusDefaultController,
    TextEditingController? statusDefaultOneController,
    TextEditingController? statusDefaultTwoController,
    TextEditingController? phoneNumberController,
    Country? selectedCountry,
    ProfileModel? profileModelObj,
  }) {
    return ProfileState(
      statusDefaultController:
          statusDefaultController ?? this.statusDefaultController,
      statusDefaultOneController:
          statusDefaultOneController ?? this.statusDefaultOneController,
      statusDefaultTwoController:
          statusDefaultTwoController ?? this.statusDefaultTwoController,
      phoneNumberController:
          phoneNumberController ?? this.phoneNumberController,
      selectedCountry: selectedCountry ?? this.selectedCountry,
      profileModelObj: profileModelObj ?? this.profileModelObj,
    );
  }
}
