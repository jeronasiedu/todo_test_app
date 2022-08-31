import 'package:todo_app/presentation/home_screen/home_screen.dart';
import 'package:todo_app/presentation/home_screen/binding/home_binding.dart';
import 'package:todo_app/presentation/add_task_screen/add_task_screen.dart';
import 'package:todo_app/presentation/add_task_screen/binding/add_task_binding.dart';
import 'package:todo_app/presentation/app_navigation_screen/app_navigation_screen.dart';
import 'package:todo_app/presentation/app_navigation_screen/binding/app_navigation_binding.dart';
import 'package:get/get.dart';

class AppRoutes {
  static String homeScreen = '/home_screen';

  static String addTaskScreen = '/add_task_screen';

  static String appNavigationScreen = '/app_navigation_screen';

  static String initialRoute = '/initialRoute';

  static List<GetPage> pages = [
    GetPage(
      name: homeScreen,
      page: () => HomeScreen(),
      bindings: [
        HomeBinding(),
      ],
    ),
    GetPage(
      name: addTaskScreen,
      page: () => AddTaskScreen(),
      bindings: [
        AddTaskBinding(),
      ],
    ),
    GetPage(
      name: appNavigationScreen,
      page: () => AppNavigationScreen(),
      bindings: [
        AppNavigationBinding(),
      ],
    ),
    GetPage(
      name: initialRoute,
      page: () => HomeScreen(),
      bindings: [
        HomeBinding(),
      ],
    )
  ];
}
