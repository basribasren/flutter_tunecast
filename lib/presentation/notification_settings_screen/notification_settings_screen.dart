import 'bloc/notification_settings_bloc.dart';import 'models/notification_settings_model.dart';import 'package:basri_s_application28/core/app_export.dart';import 'package:basri_s_application28/widgets/app_bar/appbar_image.dart';import 'package:basri_s_application28/widgets/app_bar/appbar_title.dart';import 'package:basri_s_application28/widgets/app_bar/custom_app_bar.dart';import 'package:flutter/material.dart';class NotificationSettingsScreen extends StatelessWidget {static Widget builder(BuildContext context) { return BlocProvider<NotificationSettingsBloc>(create: (context) => NotificationSettingsBloc(NotificationSettingsState(notificationSettingsModelObj: NotificationSettingsModel()))..add(NotificationSettingsInitialEvent()), child: NotificationSettingsScreen()); } 
@override Widget build(BuildContext context) { return BlocBuilder<NotificationSettingsBloc, NotificationSettingsState>(builder: (context, state) {return SafeArea(child: Scaffold(backgroundColor: ColorConstant.whiteA700, appBar: CustomAppBar(height: getVerticalSize(51), leadingWidth: 52, leading: AppbarImage(height: getSize(28), width: getSize(28), svgPath: ImageConstant.imgArrowleft, margin: getMargin(left: 24, top: 10, bottom: 13), onTap: () {onTapArrowleft37(context);}), title: AppbarTitle(text: "msg_notification_se".tr, margin: getMargin(left: 16))), body: Container(width: double.maxFinite, padding: getPadding(left: 24, top: 30, right: 24, bottom: 30), child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Column(crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start, children: [Text("msg_recommended_mus".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtUrbanistSemiBold18Gray900.copyWith(letterSpacing: getHorizontalSize(0.2))), Padding(padding: getPadding(top: 7), child: Text("lbl_push_email".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtUrbanistRomanMedium14Gray900.copyWith(letterSpacing: getHorizontalSize(0.2))))]), CustomImageView(svgPath: ImageConstant.imgArrowdownGray90020x20, height: getSize(20), width: getSize(20), margin: getMargin(top: 13, bottom: 13))]), Padding(padding: getPadding(top: 27), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Column(crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start, children: [Text("lbl_new_music".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtUrbanistSemiBold18Gray900.copyWith(letterSpacing: getHorizontalSize(0.2))), Padding(padding: getPadding(top: 6), child: Text("lbl_push".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtUrbanistRomanMedium14Gray900.copyWith(letterSpacing: getHorizontalSize(0.2))))]), CustomImageView(svgPath: ImageConstant.imgArrowdownGray90020x20, height: getSize(20), width: getSize(20), margin: getMargin(top: 12, bottom: 12))])), Padding(padding: getPadding(top: 29), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, crossAxisAlignment: CrossAxisAlignment.start, children: [Column(crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start, children: [Text("msg_playlist_update".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtUrbanistSemiBold18Gray900.copyWith(letterSpacing: getHorizontalSize(0.2))), Padding(padding: getPadding(top: 5), child: Text("lbl_push_email".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtUrbanistRomanMedium14Gray900.copyWith(letterSpacing: getHorizontalSize(0.2))))]), CustomImageView(svgPath: ImageConstant.imgArrowdownGray90020x20, height: getSize(20), width: getSize(20), margin: getMargin(top: 11, bottom: 13))])), Padding(padding: getPadding(top: 26), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Column(crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start, children: [Text("msg_concert_notific".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtUrbanistSemiBold18Gray900.copyWith(letterSpacing: getHorizontalSize(0.2))), Padding(padding: getPadding(top: 7), child: Text("lbl_push_email".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtUrbanistRomanMedium14Gray900.copyWith(letterSpacing: getHorizontalSize(0.2))))]), CustomImageView(svgPath: ImageConstant.imgArrowdownGray90020x20, height: getSize(20), width: getSize(20), margin: getMargin(top: 13, bottom: 13))])), Padding(padding: getPadding(top: 28), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, crossAxisAlignment: CrossAxisAlignment.start, children: [Column(crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start, children: [Text("lbl_artist_updates".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtUrbanistSemiBold18Gray900.copyWith(letterSpacing: getHorizontalSize(0.2))), Padding(padding: getPadding(top: 5), child: Text("lbl_push_email".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtUrbanistRomanMedium14Gray900.copyWith(letterSpacing: getHorizontalSize(0.2))))]), CustomImageView(svgPath: ImageConstant.imgArrowdownGray90020x20, height: getSize(20), width: getSize(20), margin: getMargin(top: 11, bottom: 13))])), Padding(padding: getPadding(top: 26), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Column(crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start, children: [Text("lbl_product_news".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtUrbanistSemiBold18Gray900.copyWith(letterSpacing: getHorizontalSize(0.2))), Padding(padding: getPadding(top: 6), child: Text("lbl_email".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtUrbanistRomanMedium14Gray900.copyWith(letterSpacing: getHorizontalSize(0.2))))]), CustomImageView(svgPath: ImageConstant.imgArrowdownGray90020x20, height: getSize(20), width: getSize(20), margin: getMargin(top: 13, bottom: 12))])), Padding(padding: getPadding(top: 26), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Column(crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start, children: [Text("lbl_hearme_offers".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtUrbanistSemiBold18Gray900.copyWith(letterSpacing: getHorizontalSize(0.2))), Padding(padding: getPadding(top: 7), child: Text("lbl_push_email".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtUrbanistRomanMedium14Gray900.copyWith(letterSpacing: getHorizontalSize(0.2))))]), CustomImageView(svgPath: ImageConstant.imgArrowdownGray90020x20, height: getSize(20), width: getSize(20), margin: getMargin(top: 13, bottom: 13))])), Padding(padding: getPadding(top: 28, bottom: 5), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, crossAxisAlignment: CrossAxisAlignment.start, children: [Column(crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start, children: [Text("lbl_new_episodes".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtUrbanistSemiBold18Gray900.copyWith(letterSpacing: getHorizontalSize(0.2))), Padding(padding: getPadding(top: 5), child: Text("lbl_push_email".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtUrbanistRomanMedium14Gray900.copyWith(letterSpacing: getHorizontalSize(0.2))))]), CustomImageView(svgPath: ImageConstant.imgArrowdownGray90020x20, height: getSize(20), width: getSize(20), margin: getMargin(top: 11, bottom: 13))]))]))));}); } 
onTapArrowleft37(BuildContext context) { NavigatorService.goBack(); } 
 }
