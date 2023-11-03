import 'bloc/add_new_card_bloc.dart';import 'models/add_new_card_model.dart';import 'package:basri_s_application28/core/app_export.dart';import 'package:basri_s_application28/widgets/app_bar/appbar_image.dart';import 'package:basri_s_application28/widgets/app_bar/appbar_title.dart';import 'package:basri_s_application28/widgets/app_bar/custom_app_bar.dart';import 'package:basri_s_application28/widgets/custom_button.dart';import 'package:basri_s_application28/widgets/custom_text_form_field.dart';import 'package:flutter/material.dart';class AddNewCardScreen extends StatelessWidget {static Widget builder(BuildContext context) { return BlocProvider<AddNewCardBloc>(create: (context) => AddNewCardBloc(AddNewCardState(addNewCardModelObj: AddNewCardModel()))..add(AddNewCardInitialEvent()), child: AddNewCardScreen()); } 
@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(backgroundColor: ColorConstant.whiteA700, resizeToAvoidBottomInset: false, appBar: CustomAppBar(height: getVerticalSize(48), leadingWidth: 52, leading: AppbarImage(height: getSize(28), width: getSize(28), svgPath: ImageConstant.imgArrowleft, margin: getMargin(left: 24, top: 10, bottom: 10), onTap: () {onTapArrowleft32(context);}), title: AppbarTitle(text: "lbl_add_new_card".tr, margin: getMargin(left: 16)), actions: [AppbarImage(height: getSize(28), width: getSize(28), svgPath: ImageConstant.imgIconlylightscan, margin: getMargin(left: 24, top: 10, right: 24, bottom: 10))]), body: Container(width: double.maxFinite, padding: getPadding(left: 24, top: 31, right: 24, bottom: 31), child: Column(crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start, children: [Container(width: double.maxFinite, child: Container(padding: getPadding(all: 30), decoration: AppDecoration.gradientRed700RedA70002.copyWith(borderRadius: BorderRadiusStyle.roundedBorder32), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.center, children: [Padding(padding: getPadding(top: 1), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Text("lbl_mocard".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtUrbanistRomanBold16WhiteA700.copyWith(letterSpacing: getHorizontalSize(0.2))), CustomImageView(svgPath: ImageConstant.imgLightbulbWhiteA700, height: getVerticalSize(18), width: getHorizontalSize(60), margin: getMargin(bottom: 1))])), Padding(padding: getPadding(top: 35), child: Text("msg".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtUrbanistRomanBold48WhiteA700)), Padding(padding: getPadding(top: 28), child: Row(children: [Column(crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start, children: [Text("msg_card_holder_nam".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtUrbanistRomanMedium10WhiteA700.copyWith(letterSpacing: getHorizontalSize(0.2))), Padding(padding: getPadding(top: 5), child: Text("lbl2".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtUrbanistSemiBold14WhiteA700.copyWith(letterSpacing: getHorizontalSize(0.2))))]), Spacer(flex: 42), Padding(padding: getPadding(top: 1, bottom: 1), child: Column(crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start, children: [Text("lbl_expiry_date".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtUrbanistRomanMedium10WhiteA700.copyWith(letterSpacing: getHorizontalSize(0.2))), Padding(padding: getPadding(top: 4), child: Text("lbl3".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtUrbanistSemiBold14WhiteA700.copyWith(letterSpacing: getHorizontalSize(0.2))))])), Spacer(flex: 57), CustomImageView(svgPath: ImageConstant.imgUserWhiteA700, height: getVerticalSize(36), width: getHorizontalSize(58))]))]))), Padding(padding: getPadding(top: 24), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: ColorConstant.blueGray100)), Padding(padding: getPadding(top: 24), child: Text("lbl_card_name".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtUrbanistRomanBold18.copyWith(letterSpacing: getHorizontalSize(0.2)))), BlocSelector<AddNewCardBloc, AddNewCardState, TextEditingController?>(selector: (state) => state.statusFillTypeDefaultController, builder: (context, statusFillTypeDefaultController) {return CustomTextFormField(focusNode: FocusNode(), controller: statusFillTypeDefaultController, hintText: "lbl_andrew_ainsley".tr, margin: getMargin(top: 13));}), Padding(padding: getPadding(top: 25), child: Text("lbl_card_number".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtUrbanistRomanBold18.copyWith(letterSpacing: getHorizontalSize(0.2)))), BlocSelector<AddNewCardBloc, AddNewCardState, TextEditingController?>(selector: (state) => state.statusFillTypeDefaultOneController, builder: (context, statusFillTypeDefaultOneController) {return CustomTextFormField(focusNode: FocusNode(), controller: statusFillTypeDefaultOneController, hintText: "msg_2672_4738_7837".tr, margin: getMargin(top: 13));}), Padding(padding: getPadding(top: 25, bottom: 5), child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [Expanded(child: Padding(padding: getPadding(top: 2, right: 10), child: Column(crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start, children: [Text("lbl_expiry_date2".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtUrbanistRomanBold18.copyWith(letterSpacing: getHorizontalSize(0.2))), GestureDetector(onTap: () {onTapRowdate(context);}, child: Container(margin: getMargin(top: 11), padding: getPadding(left: 20, top: 18, right: 20, bottom: 18), decoration: AppDecoration.fillGray50.copyWith(borderRadius: BorderRadiusStyle.roundedBorder16), child: Row(mainAxisSize: MainAxisSize.min, children: [Padding(padding: getPadding(top: 1, bottom: 1), child: BlocSelector<AddNewCardBloc, AddNewCardState, String?>(selector: (state) => state.addNewCardModelObj!.dateTxt, builder: (context, dateTxt) {return Text(dateTxt ?? "", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtUrbanistSemiBold14Gray900.copyWith(letterSpacing: getHorizontalSize(0.2)));})), CustomImageView(svgPath: ImageConstant.imgCalendar20x20, height: getSize(20), width: getSize(20), margin: getMargin(left: 47))])))]))), Expanded(child: Padding(padding: getPadding(left: 10), child: Column(crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start, children: [Text("lbl_cvv".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtUrbanistRomanBold18.copyWith(letterSpacing: getHorizontalSize(0.2))), BlocSelector<AddNewCardBloc, AddNewCardState, TextEditingController?>(selector: (state) => state.statusFillTypeDefaultTwoController, builder: (context, statusFillTypeDefaultTwoController) {return CustomTextFormField(width: getHorizontalSize(180), focusNode: FocusNode(), controller: statusFillTypeDefaultTwoController, hintText: "lbl_699".tr, margin: getMargin(top: 13), textInputAction: TextInputAction.done);})])))]))])), bottomNavigationBar: CustomButton(height: getVerticalSize(58), text: "lbl_add".tr, margin: getMargin(left: 24, right: 24, bottom: 48), variant: ButtonVariant.FillGray80002, padding: ButtonPadding.PaddingAll19, onTap: () {onTapAdd(context);}))); } 
Future<void> onTapRowdate(BuildContext context) async  { var initialState = BlocProvider.of<AddNewCardBloc>(context).state;DateTime? dateTime  = await showDatePicker(context: context, initialDate: DateTime.now() , firstDate: DateTime(1970) ,lastDate: DateTime(DateTime.now().year,DateTime.now().month,DateTime.now().day)); if (dateTime != null) {initialState.addNewCardModelObj?.selectedDateTxt = dateTime;context.read<AddNewCardBloc>().add(ChangeDateEvent(date: dateTime.format(SHORT_DATE_WITH_FULL_YEAR)));} } 
onTapAdd(BuildContext context) { NavigatorService.pushNamed(AppRoutes.selectPaymentMethodScreen, ); } 
onTapArrowleft32(BuildContext context) { NavigatorService.goBack(); } 
 }
