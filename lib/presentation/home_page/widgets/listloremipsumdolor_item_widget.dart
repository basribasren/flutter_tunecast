import '../models/listloremipsumdolor_item_model.dart';
import 'package:basri_s_application28/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ListloremipsumdolorItemWidget extends StatelessWidget {
  ListloremipsumdolorItemWidget(this.listloremipsumdolorItemModelObj);

  ListloremipsumdolorItemModel listloremipsumdolorItemModelObj;

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Align(
        alignment: Alignment.centerRight,
        child: Padding(
          padding: getPadding(
            right: 12,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgImage160x1601,
                height: getSize(
                  160,
                ),
                width: getSize(
                  160,
                ),
                radius: BorderRadius.circular(
                  getHorizontalSize(
                    24,
                  ),
                ),
              ),
              Container(
                width: getHorizontalSize(
                  139,
                ),
                margin: getMargin(
                  top: 8,
                ),
                child: Text(
                  listloremipsumdolorItemModelObj.loremIpsumDolorTxt,
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
          ),
        ),
      ),
    );
  }
}
