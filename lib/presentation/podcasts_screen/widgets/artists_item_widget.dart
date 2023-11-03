import '../models/artists_item_model.dart';
import 'package:basri_s_application28/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ArtistsItemWidget extends StatelessWidget {
  ArtistsItemWidget(this.artistsItemModelObj);

  ArtistsItemModel artistsItemModelObj;

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Align(
        alignment: Alignment.centerRight,
        child: Padding(
          padding: getPadding(
            right: 12,
            bottom: 2,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgImage160x16013,
                height: getSize(
                  160,
                ),
                width: getSize(
                  160,
                ),
                radius: BorderRadius.circular(
                  getHorizontalSize(
                    80,
                  ),
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 25,
                ),
                child: Text(
                  artistsItemModelObj.nameTxt,
                  overflow: TextOverflow.ellipsis,
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
