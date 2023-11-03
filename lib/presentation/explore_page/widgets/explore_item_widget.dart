import '../models/explore_item_model.dart';
import 'package:basri_s_application28/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ExploreItemWidget extends StatelessWidget {
  ExploreItemWidget(this.exploreItemModelObj, {this.onTapTypeRoundedC});

  ExploreItemModel exploreItemModelObj;

  VoidCallback? onTapTypeRoundedC;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: GestureDetector(
        onTap: () {
          onTapTypeRoundedC?.call();
        },
        child: Container(
          decoration: AppDecoration.gradientRed700RedA70002.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder20,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: getPadding(
                  top: 21,
                  bottom: 76,
                ),
                child: Text(
                  exploreItemModelObj.categoriesTxt,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtUrbanistRomanBold18WhiteA700.copyWith(
                    letterSpacing: getHorizontalSize(
                      0.2,
                    ),
                  ),
                ),
              ),
              CustomImageView(
                imagePath: ImageConstant.imgImage91x81,
                height: getVerticalSize(
                  91,
                ),
                width: getHorizontalSize(
                  81,
                ),
                radius: BorderRadius.circular(
                  getHorizontalSize(
                    20,
                  ),
                ),
                margin: getMargin(
                  left: 27,
                  top: 29,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
