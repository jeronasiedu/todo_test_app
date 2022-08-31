import '../controller/home_controller.dart';
import '../models/listtelevision_item_model.dart';
import 'package:flutter/material.dart';
import 'package:todo_app/core/app_export.dart';

// ignore: must_be_immutable
class ListtelevisionItemWidget extends StatelessWidget {
  ListtelevisionItemWidget(this.listtelevisionItemModelObj);

  ListtelevisionItemModel listtelevisionItemModelObj;

  var controller = Get.find<HomeController>();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: getPadding(
        left: 1,
        top: 10.5,
        right: 3,
        bottom: 10.5,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Padding(
            padding: getPadding(
              top: 18,
              bottom: 17,
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(
                getHorizontalSize(
                  6.00,
                ),
              ),
              child: CommonImageView(
                svgPath: ImageConstant.imgTelevision,
                height: getSize(
                  20.00,
                ),
                width: getSize(
                  20.00,
                ),
              ),
            ),
          ),
          Container(
            margin: getMargin(
              left: 13,
              right: 16,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  width: getHorizontalSize(
                    283.00,
                  ),
                  child: Text(
                    "msg_lorem_ipsum_dol".tr,
                    maxLines: null,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtSFProTextMedium15.copyWith(
                      height: 1.33,
                    ),
                  ),
                ),
                Padding(
                  padding: getPadding(
                    top: 9,
                    right: 10,
                  ),
                  child: Text(
                    "lbl_12_42_pm".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtSFProTextMedium13Gray500.copyWith(
                      height: 1.00,
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
