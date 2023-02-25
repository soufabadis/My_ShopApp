import 'package:get/get.dart';
import 'package:flutter/material.dart';

class AuthController extends GetxController {
  static RxBool ischecked = true.obs; // checked box initiall value

  static RxBool ishiding = true.obs; // hiding password icon initial value

  // hiding password icon initial value

  void ischeckedbox() {
    ischecked.value = !ischecked.value;
  }

  void ishidingicon() {
    ishiding.value = !ishiding.value;
  }
}
