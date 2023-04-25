
import 'package:get/instance_manager.dart';

import 'album_controller.dart';

class ControllerBindings extends Bindings {
  @override
  void dependencies() {
    Get.put<Controller>(Controller());
  }
}