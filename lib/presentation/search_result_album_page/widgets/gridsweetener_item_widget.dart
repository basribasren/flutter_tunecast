import '../models/gridsweetener_item_model.dart';
import 'package:basri_s_application28/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class GridsweetenerItemWidget extends StatelessWidget {
  GridsweetenerItemWidget(this.gridsweetenerItemModelObj,
      {this.onTapColumnsweetener});

  GridsweetenerItemModel gridsweetenerItemModelObj;

  VoidCallback? onTapColumnsweetener;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTapColumnsweetener?.call();
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgImage184x18419,
            height: getSize(
              184,
            ),
            width: getSize(
              184,
            ),
            radius: BorderRadius.circular(
              getHorizontalSize(
                28,
              ),
            ),
          ),
          Padding(
            padding: getPadding(
              top: 12,
            ),
            child: Text(
              gridsweetenerItemModelObj.sweetenerTxt,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: AppStyle.txtUrbanistRomanBold20,
            ),
          ),
          Padding(
            padding: getPadding(
              top: 5,
            ),
            child: Text(
              "lbl_ariana_grande".tr,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: AppStyle.txtUrbanistSemiBold14Gray700.copyWith(
                letterSpacing: getHorizontalSize(
                  0.2,
                ),
              ),
            ),
          ),
          Padding(
            padding: getPadding(
              top: 7,
            ),
            child: Text(
              gridsweetenerItemModelObj.zipcodeTxt,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: AppStyle.txtUrbanistSemiBold14Gray700.copyWith(
                letterSpacing: getHorizontalSize(
                  0.2,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
