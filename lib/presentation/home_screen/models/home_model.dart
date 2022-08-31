import 'package:get/get.dart';
import 'listtelevision_item_model.dart';
import 'listunsplashymsecc_one_item_model.dart';

class HomeModel {
  RxList<ListtelevisionItemModel> listtelevisionItemList =
      RxList.filled(5, ListtelevisionItemModel());

  RxList<ListunsplashymseccOneItemModel> listunsplashymseccOneItemList =
      RxList.filled(4, ListunsplashymseccOneItemModel());
}
