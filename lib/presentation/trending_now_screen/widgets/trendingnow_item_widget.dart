import '../models/trendingnow_item_model.dart';
import 'package:basri_s_application28/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class TrendingnowItemWidget extends StatelessWidget {
  TrendingnowItemWidget(this.trendingnowItemModelObj);

  TrendingnowItemModel trendingnowItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgImage184x1841,
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
        Container(
          width: getHorizontalSize(
            182,
          ),
          margin: getMargin(
            top: 12,
          ),
          child: Text(
            trendingnowItemModelObj.loremIpsumDolorTxt,
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
