import 'package:get/get.dart';

class BottomNavCtrl extends GetxController {
  final _selectIndex = 0.obs;

  get selectIndex => this._selectIndex.value;
  set selectIndex(index) => this._selectIndex.value = index;
}
