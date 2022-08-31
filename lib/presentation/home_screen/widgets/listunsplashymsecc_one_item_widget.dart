import '../controller/home_controller.dart';
import '../models/listunsplashymsecc_one_item_model.dart';
import 'package:flutter/material.dart';
import 'package:todo_app/core/app_export.dart';

// ignore: must_be_immutable
class ListunsplashymseccOneItemWidget extends StatelessWidget {
  ListunsplashymseccOneItemWidget(this.listunsplashymseccOneItemModelObj);

  ListunsplashymseccOneItemModel listunsplashymseccOneItemModelObj;

  var controller = Get.find<HomeController>();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Padding(
        padding: getPadding(
          top: 13.0,
          bottom: 13.0,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            Container(
              height: getSize(
                10.00,
              ),
              width: getSize(
                10.00,
              ),
              margin: getMargin(
                top: 20,
                bottom: 20,
              ),
              decoration: BoxDecoration(
                color: ColorConstant.black900,
                borderRadius: BorderRadius.circular(
                  getHorizontalSize(
                    5.00,
                  ),
                ),
              ),
            ),
            Container(
              margin: getMargin(
                left: 18,
                right: 9,
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
                      top: 6,
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
      ),
    );
  }
}
