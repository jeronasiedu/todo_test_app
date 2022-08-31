import '/core/app_export.dart';
import 'package:todo_app/presentation/add_task_screen/models/add_task_model.dart';
import 'package:flutter/material.dart';

class AddTaskController extends GetxController {
  TextEditingController group3517Controller = TextEditingController();

  Rx<AddTaskModel> addTaskModelObj = AddTaskModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    group3517Controller.dispose();
  }
}
