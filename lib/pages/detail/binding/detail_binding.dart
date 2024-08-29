import 'package:get/get.dart';
import 'package:getx_lesson/pages/detail/controller/detail_controller.dart';

import '../../../services/api_service.dart';
import '../../home/controller/home_controller.dart';

class DetailBinding extends Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.put(DetailController());
  }
}
