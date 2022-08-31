import '../controller/add_task_controller.dart';
import 'package:get/get.dart';

class AddTaskBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AddTaskController());
  }
}
