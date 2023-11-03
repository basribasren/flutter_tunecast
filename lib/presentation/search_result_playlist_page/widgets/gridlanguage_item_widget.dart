import '../models/gridlanguage_item_model.dart';
import 'package:basri_s_application28/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class GridlanguageItemWidget extends StatelessWidget {
  GridlanguageItemWidget(this.gridlanguageItemModelObj);

  GridlanguageItemModel gridlanguageItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgImage116x1162,
          height: getSize(
            184,
          ),
          width: getSize(
            184,
          ),
          radius: BorderRadius.circular(
            getHorizontalSize(
              20,
            ),
          ),
        ),
        Container(
          width: getHorizontalSize(
            162,
          ),
          margin: getMargin(
            top: 13,
          ),
          child: Text(
            gridlanguageItemModelObj.languageTxt,
            maxLines: null,
            textAlign: TextAlign.left,
            style: AppStyle.txtUrbanistRomanBold18.copyWith(
              letterSpacing: getHorizontalSize(
                0.2,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
