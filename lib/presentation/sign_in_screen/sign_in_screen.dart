import 'bloc/sign_in_bloc.dart';import 'models/sign_in_model.dart';import 'package:basri_s_application28/core/app_export.dart';import 'package:basri_s_application28/widgets/custom_button.dart';import 'package:basri_s_application28/widgets/custom_checkbox.dart';import 'package:basri_s_application28/widgets/custom_text_form_field.dart';import 'package:flutter/material.dart';import 'package:basri_s_application28/domain/googleauth/google_auth_helper.dart';class SignInScreen extends StatelessWidget {static Widget builder(BuildContext context) { return BlocProvider<SignInBloc>(create: (context) => SignInBloc(SignInState(signInModelObj: SignInModel()))..add(SignInInitialEvent()), child: SignInScreen()); } 
@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(backgroundColor: ColorConstant.whiteA700, resizeToAvoidBottomInset: false, body: Container(width: double.maxFinite, padding: getPadding(left: 24, top: 11, right: 24, bottom: 11), child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [CustomImageView(svgPath: ImageConstant.imgArrowleft, height: getSize(28), width: getSize(28), alignment: Alignment.centerLeft, onTap: () {onTapImgArrowleft(context);}), CustomImageView(svgPath: ImageConstant.imgVectorRedA700, height: getSize(102), width: getSize(102), margin: getMargin(top: 28)), Padding(padding: getPadding(top: 69), child: Text("msg_login_to_your_a".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtUrbanistRomanBold32)), BlocSelector<SignInBloc, SignInState, TextEditingController?>(selector: (state) => state.statusDefaultController, builder: (context, statusDefaultController) {return CustomTextFormField(focusNode: FocusNode(), controller: statusDefaultController, hintText: "lbl_email".tr, margin: getMargin(top: 27), padding: TextFormFieldPadding.PaddingT21, fontStyle: TextFormFieldFontStyle.UrbanistRegular14Gray500, textInputType: TextInputType.emailAddress, prefix: Container(margin: getMargin(left: 20, top: 20, right: 12, bottom: 20), child: CustomImageView(svgPath: ImageConstant.imgCheckmark)), prefixConstraints: BoxConstraints(maxHeight: getVerticalSize(60)));}), BlocBuilder<SignInBloc, SignInState>(builder: (context, state) {return CustomTextFormField(focusNode: FocusNode(), controller: state.statusDefaultOneController, hintText: "lbl_password".tr, margin: getMargin(top: 24), padding: TextFormFieldPadding.PaddingT21_1, fontStyle: TextFormFieldFontStyle.UrbanistRegular14Gray500, textInputAction: TextInputAction.done, textInputType: TextInputType.visiblePassword, prefix: Container(margin: getMargin(left: 20, top: 20, right: 12, bottom: 20), child: CustomImageView(svgPath: ImageConstant.imgLock)), prefixConstraints: BoxConstraints(maxHeight: getVerticalSize(60)), suffix: InkWell(onTap: () {context.read<SignInBloc>().add(ChangePasswordVisibilityEvent(value: !state.isShowPassword));}, child: Container(margin: getMargin(left: 30, top: 20, right: 20, bottom: 20), child: CustomImageView(svgPath: state.isShowPassword ? ImageConstant.imgDashboard : ImageConstant.imgDashboard))), suffixConstraints: BoxConstraints(maxHeight: getVerticalSize(60)), isObscureText: state.isShowPassword);}), Align(alignment: Alignment.centerLeft, child: BlocSelector<SignInBloc, SignInState, bool?>(selector: (state) => state.isCheckbox, builder: (context, isCheckbox) {return CustomCheckbox(alignment: Alignment.centerLeft, text: "lbl_remember_me".tr, iconSize: getHorizontalSize(24), value: isCheckbox, margin: getMargin(top: 24), fontStyle: CheckboxFontStyle.UrbanistSemiBold14Gray900, onChange: (value) {context.read<SignInBloc>().add(ChangeCheckBoxEvent(value: value));});})), CustomButton(height: getVerticalSize(58), text: "lbl_sign_in".tr, margin: getMargin(top: 24), padding: ButtonPadding.PaddingT18, onTap: () {onTapSignin(context);}), GestureDetector(onTap: () {onTapTxtForgotthepassword(context);}, child: Padding(padding: getPadding(top: 27), child: Text("msg_forgot_the_pass".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtUrbanistSemiBold16.copyWith(letterSpacing: getHorizontalSize(0.2))))), Padding(padding: getPadding(left: 10, top: 41, right: 10), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, crossAxisAlignment: CrossAxisAlignment.end, children: [Padding(padding: getPadding(top: 11, bottom: 9), child: SizedBox(width: getHorizontalSize(96), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: ColorConstant.blueGray100))), Text("msg_or_continue_wit".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtUrbanistSemiBold18.copyWith(letterSpacing: getHorizontalSize(0.2))), Padding(padding: getPadding(top: 11, bottom: 9), child: SizedBox(width: getHorizontalSize(96), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: ColorConstant.blueGray100)))])), Padding(padding: getPadding(left: 38, top: 31, right: 38), child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [Card(clipBehavior: Clip.antiAlias, elevation: 0, margin: EdgeInsets.all(0), color: ColorConstant.whiteA700, shape: RoundedRectangleBorder(side: BorderSide(color: ColorConstant.blueGray100, width: getHorizontalSize(1)), borderRadius: BorderRadiusStyle.roundedBorder16), child: Container(height: getVerticalSize(60), width: getHorizontalSize(88), padding: getPadding(left: 32, top: 18, right: 32, bottom: 18), decoration: AppDecoration.outlineBluegray100.copyWith(borderRadius: BorderRadiusStyle.roundedBorder16), child: Stack(children: [CustomImageView(imagePath: ImageConstant.imgAutolayouthorizontal, height: getSize(24), width: getSize(24), alignment: Alignment.center)]))), Card(clipBehavior: Clip.antiAlias, elevation: 0, margin: getMargin(left: 20), color: ColorConstant.whiteA700, shape: RoundedRectangleBorder(side: BorderSide(color: ColorConstant.blueGray100, width: getHorizontalSize(1)), borderRadius: BorderRadiusStyle.roundedBorder16), child: Container(height: getVerticalSize(60), width: getHorizontalSize(87), padding: getPadding(left: 31, top: 18, right: 31, bottom: 18), decoration: AppDecoration.outlineBluegray100.copyWith(borderRadius: BorderRadiusStyle.roundedBorder16), child: Stack(children: [CustomImageView(svgPath: ImageConstant.imgGoogle, height: getVerticalSize(24), width: getHorizontalSize(23), alignment: Alignment.center, onTap: () {onTapImgGoogle(context);})]))), Card(clipBehavior: Clip.antiAlias, elevation: 0, margin: getMargin(left: 20), color: ColorConstant.whiteA700, shape: RoundedRectangleBorder(side: BorderSide(color: ColorConstant.blueGray100, width: getHorizontalSize(1)), borderRadius: BorderRadiusStyle.roundedBorder16), child: Container(height: getVerticalSize(60), width: getHorizontalSize(88), padding: getPadding(left: 32, top: 18, right: 32, bottom: 18), decoration: AppDecoration.outlineBluegray100.copyWith(borderRadius: BorderRadiusStyle.roundedBorder16), child: Stack(children: [CustomImageView(svgPath: ImageConstant.imgFire, height: getSize(24), width: getSize(24), alignment: Alignment.center)])))])), Padding(padding: getPadding(top: 33, bottom: 5), child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [Padding(padding: getPadding(bottom: 1), child: Text("msg_don_t_have_an_a".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtUrbanistRegular14.copyWith(letterSpacing: getHorizontalSize(0.2)))), GestureDetector(onTap: () {onTapTxtSignup(context);}, child: Padding(padding: getPadding(left: 8, top: 1), child: Text("lbl_sign_up".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtUrbanistSemiBold14RedA70002.copyWith(letterSpacing: getHorizontalSize(0.2)))))]))])))); } 
onTapImgArrowleft(BuildContext context) { NavigatorService.goBack(); } 
onTapSignin(BuildContext context) { NavigatorService.pushNamed(AppRoutes.homeContainerScreen, ); } 
onTapTxtForgotthepassword(BuildContext context) { NavigatorService.pushNamed(AppRoutes.forgotPasswordScreen, ); } 
onTapImgGoogle(BuildContext context) async  {         await GoogleAuthHelper().googleSignInProcess().then((googleUser) {
          if(googleUser!=null){
            //TODO Actions to be performed after signin
          } else {
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('user data is empty')));
          }
        }).catchError((onError) {
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(onError.toString())));
        });
         } 
onTapTxtSignup(BuildContext context) { NavigatorService.pushNamed(AppRoutes.signUpScreen, ); } 
 }
