import '../home_screen/widgets/listtelevision_item_widget.dart';
import '../home_screen/widgets/listunsplashymsecc_one_item_widget.dart';
import 'controller/home_controller.dart';
import 'models/listtelevision_item_model.dart';
import 'models/listunsplashymsecc_one_item_model.dart';
import 'package:flutter/material.dart';
import 'package:todo_app/core/app_export.dart';
import 'package:todo_app/widgets/custom_floating_button.dart';

class HomeScreen extends GetWidget<HomeController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: getVerticalSize(
            966.00,
          ),
          width: size.width,
          child: Stack(
            alignment: Alignment.centerLeft,
            children: [
              CustomFloatingButton(
                height: 42,
                width: 42,
                margin: getMargin(
                  left: 18,
                  top: 20,
                  right: 18,
                  bottom: 20,
                ),
                alignment: Alignment.bottomRight,
                child: CommonImageView(
                  svgPath: ImageConstant.imgPlus,
                  height: getVerticalSize(
                    21.00,
                  ),
                  width: getHorizontalSize(
                    21.00,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: SingleChildScrollView(
                            child: Container(
                              decoration: AppDecoration.fillGray50,
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: getPadding(
                                      left: 14,
                                      top: 1,
                                      right: 14,
                                    ),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(
                                        getHorizontalSize(
                                          21.00,
                                        ),
                                      ),
                                      child: CommonImageView(
                                        imagePath:
                                            ImageConstant.imgUnsplashymsecc,
                                        height: getSize(
                                          42.00,
                                        ),
                                        width: getSize(
                                          42.00,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.center,
                                    child: Padding(
                                      padding: getPadding(
                                        left: 14,
                                        top: 27,
                                        right: 14,
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Text(
                                            "lbl_today".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtSFProDisplayBold34
                                                .copyWith(
                                              letterSpacing: 0.37,
                                              height: 1.00,
                                            ),
                                          ),
                                          Padding(
                                            padding: getPadding(
                                              top: 20,
                                              bottom: 1,
                                            ),
                                            child: Text(
                                              "lbl_hide_completed".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtSFProTextMedium13
                                                  .copyWith(),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      left: 11,
                                      top: 34,
                                      right: 11,
                                    ),
                                    child: Obx(
                                      () => ListView.builder(
                                        physics: NeverScrollableScrollPhysics(),
                                        shrinkWrap: true,
                                        itemCount: controller.homeModelObj.value
                                            .listtelevisionItemList.length,
                                        itemBuilder: (context, index) {
                                          ListtelevisionItemModel model =
                                              controller.homeModelObj.value
                                                      .listtelevisionItemList[
                                                  index];
                                          return ListtelevisionItemWidget(
                                            model,
                                          );
                                        },
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: Padding(
                                      padding: getPadding(
                                        left: 18,
                                        top: 25,
                                        right: 199,
                                      ),
                                      child: Text(
                                        "lbl_tomorrow".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtSFProDisplayBold34
                                            .copyWith(
                                          letterSpacing: 0.37,
                                          height: 1.00,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.center,
                                    child: Padding(
                                      padding: getPadding(
                                        left: 11,
                                        top: 45,
                                        right: 11,
                                        bottom: 92,
                                      ),
                                      child: Obx(
                                        () => ListView.builder(
                                          physics:
                                              NeverScrollableScrollPhysics(),
                                          shrinkWrap: true,
                                          itemCount: controller
                                              .homeModelObj
                                              .value
                                              .listunsplashymseccOneItemList
                                              .length,
                                          itemBuilder: (context, index) {
                                            ListunsplashymseccOneItemModel
                                                model = controller
                                                        .homeModelObj
                                                        .value
                                                        .listunsplashymseccOneItemList[
                                                    index];
                                            return ListunsplashymseccOneItemWidget(
                                              model,
                                            );
                                          },
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
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
