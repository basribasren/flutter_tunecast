import '../models/followartists_item_model.dart';
import 'package:basri_s_application28/core/app_export.dart';
import 'package:basri_s_application28/widgets/custom_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class FollowartistsItemWidget extends StatelessWidget {
  FollowartistsItemWidget(this.followartistsItemModelObj);

  FollowartistsItemModel followartistsItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgEllipse180x80,
          height: getSize(
            80,
          ),
          width: getSize(
            80,
          ),
          radius: BorderRadius.circular(
            getHorizontalSize(
              40,
            ),
          ),
        ),
        Padding(
          padding: getPadding(
            left: 16,
            top: 28,
            bottom: 29,
          ),
          child: Text(
            followartistsItemModelObj.artistnameTxt,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.left,
            style: AppStyle.txtUrbanistRomanBold18,
          ),
        ),
        CustomImageView(
          imagePath: ImageConstant.imgCategoriesverified,
          height: getSize(
            20,
          ),
          width: getSize(
            20,
          ),
          margin: getMargin(
            left: 4,
            top: 30,
            bottom: 30,
          ),
        ),
        Spacer(),
        CustomButton(
          height: getVerticalSize(
            32,
          ),
          width: getHorizontalSize(
            73,
          ),
          text: "lbl_follow".tr,
          margin: getMargin(
            top: 24,
            bottom: 24,
          ),
          shape: ButtonShape.RoundedBorder16,
          fontStyle: ButtonFontStyle.UrbanistSemiBold14WhiteA700,
        ),
      ],
    );
  }
}
