import '../models/newreleases_item_model.dart';
import 'package:basri_s_application28/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class NewreleasesItemWidget extends StatelessWidget {
  NewreleasesItemWidget(this.newreleasesItemModelObj);

  NewreleasesItemModel newreleasesItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgImage184x18416,
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
            newreleasesItemModelObj.typeTxt,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.left,
            style: AppStyle.txtUrbanistRomanBold20,
          ),
        ),
        Padding(
          padding: getPadding(
            top: 7,
          ),
          child: Text(
            newreleasesItemModelObj.nameTxt,
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
    );
  }
}
