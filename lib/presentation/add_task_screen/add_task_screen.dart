import 'controller/add_task_controller.dart';
import 'package:flutter/material.dart';
import 'package:todo_app/core/app_export.dart';
import 'package:todo_app/widgets/custom_button.dart';
import 'package:todo_app/widgets/custom_text_form_field.dart';

class AddTaskScreen extends GetWidget<AddTaskController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: size.width,
                child: SingleChildScrollView(
                    child: Container(
                        margin: getMargin(bottom: 271),
                        child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Container(
                                      width: size.width,
                                      decoration: BoxDecoration(
                                          color: ColorConstant.gray50Ef,
                                          boxShadow: [
                                            BoxShadow(
                                                color: ColorConstant.black9004c,
                                                spreadRadius:
                                                    getHorizontalSize(2.00),
                                                blurRadius:
                                                    getHorizontalSize(2.00),
                                                offset: Offset(0, 0.5))
                                          ]),
                                      child: Container(
                                          child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                            CommonImageView(
                                                svgPath: ImageConstant
                                                    .imgBlackbackgroun,
                                                height: getVerticalSize(14.00),
                                                width:
                                                    getHorizontalSize(375.00)),
                                            Padding(
                                                padding: getPadding(
                                                    top: 3, right: 10),
                                                child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Padding(
                                                          padding: getPadding(
                                                              left: 9,
                                                              top: 10,
                                                              bottom: 10),
                                                          child: Row(
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .center,
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .min,
                                                              children: [
                                                                GestureDetector(
                                                                    onTap: () {
                                                                      onTapImgArrowleft();
                                                                    },
                                                                    child: CommonImageView(
                                                                        svgPath:
                                                                            ImageConstant
                                                                                .imgArrowleft,
                                                                        height: getVerticalSize(
                                                                            20.00),
                                                                        width: getHorizontalSize(
                                                                            11.00))),
                                                                Padding(
                                                                    padding: getPadding(
                                                                        left: 5,
                                                                        top: 1,
                                                                        bottom:
                                                                            2),
                                                                    child: Text(
                                                                        "lbl_close"
                                                                            .tr,
                                                                        overflow:
                                                                            TextOverflow
                                                                                .ellipsis,
                                                                        textAlign:
                                                                            TextAlign
                                                                                .left,
                                                                        style: AppStyle
                                                                            .txtSFProTextRegular17
                                                                            .copyWith(height: 1.00)))
                                                              ])),
                                                      Padding(
                                                          padding: getPadding(
                                                              left: 99,
                                                              top: 11,
                                                              bottom: 13),
                                                          child: Text(
                                                              "lbl_task".tr,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtSFProTextSemibold17
                                                                  .copyWith(
                                                                      height:
                                                                          1.00)))
                                                    ]))
                                          ])))),
                              Container(
                                  width: double.infinity,
                                  margin:
                                      getMargin(left: 29, top: 32, right: 29),
                                  decoration: AppDecoration.fillGray50,
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Padding(
                                            padding: getPadding(right: 10),
                                            child: Text("lbl_add_a_task".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtSFProDisplayBold34
                                                    .copyWith(
                                                        letterSpacing: 0.37,
                                                        height: 1.00))),
                                        Align(
                                            alignment: Alignment.center,
                                            child: Padding(
                                                padding: getPadding(
                                                    top: 34, right: 5),
                                                child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Padding(
                                                          padding: getPadding(
                                                              top: 6,
                                                              bottom: 4),
                                                          child: Text(
                                                              "lbl_name".tr,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign: TextAlign
                                                                  .left,
                                                              style: AppStyle
                                                                  .txtSFProDisplaySemibold20
                                                                  .copyWith(
                                                                      letterSpacing:
                                                                          0.38,
                                                                      height:
                                                                          1.00))),
                                                      CustomTextFormField(
                                                          width: 241,
                                                          focusNode:
                                                              FocusNode(),
                                                          controller: controller
                                                              .group3517Controller,
                                                          hintText:
                                                              "msg_lorem_ipsum_dol2"
                                                                  .tr,
                                                          margin:
                                                              getMargin(top: 3),
                                                          textInputAction:
                                                              TextInputAction
                                                                  .done)
                                                    ]))),
                                        Padding(
                                            padding:
                                                getPadding(top: 30, right: 10),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Padding(
                                                      padding: getPadding(
                                                          top: 9, bottom: 8),
                                                      child: Text("lbl_hour".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtSFProDisplaySemibold20
                                                              .copyWith(
                                                                  letterSpacing:
                                                                      0.38,
                                                                  height:
                                                                      1.00))),
                                                  Container(
                                                      height: getVerticalSize(
                                                          36.00),
                                                      width: getHorizontalSize(
                                                          86.00),
                                                      margin: getMargin(
                                                          left: 26,
                                                          top: 1,
                                                          bottom: 1),
                                                      child: Card(
                                                          clipBehavior:
                                                              Clip.antiAlias,
                                                          elevation: 0,
                                                          margin:
                                                              EdgeInsets.all(0),
                                                          color: ColorConstant
                                                              .gray6001e,
                                                          shape: RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius.circular(
                                                                      getHorizontalSize(
                                                                          6.00))),
                                                          child: Stack(
                                                              alignment: Alignment
                                                                  .bottomCenter,
                                                              children: [
                                                                Align(
                                                                    alignment:
                                                                        Alignment
                                                                            .bottomRight,
                                                                    child: Padding(
                                                                        padding: getPadding(left: 10, top: 10, right: 9),
                                                                        child: Row(crossAxisAlignment: CrossAxisAlignment.start, mainAxisSize: MainAxisSize.max, children: [
                                                                          Text(
                                                                              "lbl_10".tr,
                                                                              overflow: TextOverflow.ellipsis,
                                                                              textAlign: TextAlign.left,
                                                                              style: AppStyle.txtSFProDisplayRegular22.copyWith(letterSpacing: 0.35, height: 1.00)),
                                                                          Padding(
                                                                              padding: getPadding(left: 14),
                                                                              child: Text("lbl_42".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtSFProDisplayRegular22.copyWith(letterSpacing: 0.35, height: 1.00)))
                                                                        ]))),
                                                                Align(
                                                                    alignment:
                                                                        Alignment
                                                                            .bottomCenter,
                                                                    child: Padding(
                                                                        padding: getPadding(left: 8, top: 10, right: 8, bottom: 3),
                                                                        child: Row(crossAxisAlignment: CrossAxisAlignment.center, mainAxisSize: MainAxisSize.max, children: [
                                                                          Padding(
                                                                              padding: getPadding(bottom: 3),
                                                                              child: Text("lbl_09".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtSFProDisplayRegular22Black900.copyWith(letterSpacing: 0.35, height: 1.00))),
                                                                          Padding(
                                                                              padding: getPadding(left: 6, top: 3),
                                                                              child: Text("lbl".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtSFProDisplayRegular22Black900.copyWith(letterSpacing: 0.35, height: 1.00))),
                                                                          Padding(
                                                                              padding: getPadding(left: 9, bottom: 3),
                                                                              child: Text("lbl_41".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtSFProDisplayRegular22Black900.copyWith(letterSpacing: 0.35, height: 1.00)))
                                                                        ]))),
                                                                Align(
                                                                    alignment:
                                                                        Alignment
                                                                            .topCenter,
                                                                    child: Padding(
                                                                        padding: getPadding(left: 8, right: 8, bottom: 10),
                                                                        child: Row(crossAxisAlignment: CrossAxisAlignment.start, mainAxisSize: MainAxisSize.max, children: [
                                                                          Text(
                                                                              "lbl_08".tr,
                                                                              overflow: TextOverflow.ellipsis,
                                                                              textAlign: TextAlign.left,
                                                                              style: AppStyle.txtSFProDisplayRegular22.copyWith(letterSpacing: 0.35, height: 1.00)),
                                                                          Padding(
                                                                              padding: getPadding(left: 15),
                                                                              child: Text("lbl_40".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtSFProDisplayRegular22.copyWith(letterSpacing: 0.35, height: 1.00)))
                                                                        ])))
                                                              ]))),
                                                  Container(
                                                      margin:
                                                          getMargin(left: 5),
                                                      decoration: AppDecoration
                                                          .fillGray6001e
                                                          .copyWith(
                                                              borderRadius:
                                                                  BorderRadiusStyle
                                                                      .roundedBorder8),
                                                      child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.min,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .center,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                          children: [
                                                            CustomButton(
                                                                width: 52,
                                                                text:
                                                                    "lbl_am".tr,
                                                                margin:
                                                                    getMargin(
                                                                        all: 3))
                                                          ]))
                                                ])),
                                        Align(
                                            alignment: Alignment.center,
                                            child: Padding(
                                                padding: getPadding(
                                                    top: 30, right: 5),
                                                child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment.end,
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Padding(
                                                          padding: getPadding(
                                                              top: 8,
                                                              bottom: 2),
                                                          child: Text(
                                                              "lbl_today".tr,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign: TextAlign
                                                                  .left,
                                                              style: AppStyle
                                                                  .txtSFProDisplaySemibold20
                                                                  .copyWith(
                                                                      letterSpacing:
                                                                          0.38,
                                                                      height:
                                                                          1.00))),
                                                      CommonImageView(
                                                          svgPath: ImageConstant
                                                              .imgSignal,
                                                          height:
                                                              getVerticalSize(
                                                                  31.00),
                                                          width:
                                                              getHorizontalSize(
                                                                  51.00))
                                                    ]))),
                                        CustomButton(
                                            width: 316,
                                            text: "lbl_done".tr,
                                            margin: getMargin(left: 1, top: 59),
                                            variant: ButtonVariant.FillGray900,
                                            shape: ButtonShape.RoundedBorder11,
                                            padding: ButtonPadding.PaddingAll16,
                                            fontStyle: ButtonFontStyle
                                                .SFProTextMedium1406,
                                            alignment: Alignment.center),
                                        Align(
                                            alignment: Alignment.center,
                                            child: Container(
                                                width:
                                                    getHorizontalSize(302.00),
                                                margin: getMargin(
                                                    left: 1,
                                                    top: 18,
                                                    right: 13),
                                                child: Text(
                                                    "msg_if_you_disable".tr,
                                                    maxLines: null,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtSFProTextRegular13
                                                        .copyWith(
                                                            height: 1.38))))
                                      ]))
                            ]))))));
  }

  onTapImgArrowleft() {
    Get.back();
  }
}
