import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

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

  // regustration methode
  Future<void> firebaseregistration(
      String email, String password, String username) async {
    try {
      UserCredential userCredential =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      await userCredential.user!.updateProfile(
          displayName:
              username); // Add this line to update the user's display name in Firebase
    } on FirebaseAuthException catch (erreur) {
      String message;
      String title = erreur.code;

      if (erreur.code == 'weak-password') {
        message = 'The password provided is too weak.';
      } else if (erreur.code == 'email-already-in-use') {
        message = 'The account already exists for that email.';
      } else {
        message = erreur.code;
      }
      Get.snackbar(title, message,
          snackPosition: SnackPosition.BOTTOM,
          duration: Duration(seconds: 4),
          backgroundColor: Colors.red[800],
          colorText: Colors.white);
    } catch (erreur) {
      Get.snackbar('ERRUER', erreur.toString(),
          snackPosition: SnackPosition.BOTTOM,
          duration: Duration(seconds: 4),
          backgroundColor: Colors.red[800],
          colorText: Colors.white);
    }
  }
}
