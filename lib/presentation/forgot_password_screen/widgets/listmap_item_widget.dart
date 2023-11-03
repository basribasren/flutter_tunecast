import '../models/listmap_item_model.dart';
import 'package:basri_s_application28/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ListmapItemWidget extends StatelessWidget {
  ListmapItemWidget(this.listmapItemModelObj);

  ListmapItemModel listmapItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: getPadding(
        all: 24,
      ),
      decoration: AppDecoration.outlineRedA700.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder32,
      ),
      child: Row(
        children: [
          Card(
            clipBehavior: Clip.antiAlias,
            elevation: 0,
            margin: EdgeInsets.all(0),
            color: ColorConstant.red50,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadiusStyle.circleBorder40,
            ),
            child: Container(
              height: getSize(
                80,
              ),
              width: getSize(
                80,
              ),
              padding: getPadding(
                all: 24,
              ),
              decoration: AppDecoration.fillRed50.copyWith(
                borderRadius: BorderRadiusStyle.circleBorder40,
              ),
              child: Stack(
                children: [
                  CustomImageView(
                    svgPath: ImageConstant.imgMap,
                    height: getSize(
                      32,
                    ),
                    width: getSize(
                      32,
                    ),
                    alignment: Alignment.center,
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: getPadding(
              left: 20,
              top: 16,
              bottom: 15,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  listmapItemModelObj.typeTxt,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtUrbanistRomanMedium14.copyWith(
                    letterSpacing: getHorizontalSize(
                      0.2,
                    ),
                  ),
                ),
                Padding(
                  padding: getPadding(
                    top: 10,
                  ),
                  child: Text(
                    listmapItemModelObj.numberTxt,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtUrbanistRomanBold16.copyWith(
                      letterSpacing: getHorizontalSize(
                        0.2,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
