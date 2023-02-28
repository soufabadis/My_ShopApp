import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:mystore/routes/routes.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthController extends GetxController {
  static RxBool ischecked = true.obs; // checked box initiall value

  static RxBool ishiding = true.obs; // hiding password icon initial value

  final GoogleSignIn googleSignIn = GoogleSignIn(); // google signin
  String displayUserName = "";
  String displayUserphoto = "";

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
      await FirebaseAuth.instance.currentUser!.updateDisplayName(username);

      // Add this line to update the user's display name in Firebase
    } on FirebaseAuthException catch (erreur) {
      String message;
      String title = erreur.code;

      if (erreur.code == 'weak-password') {
        message = 'The password provided is too weak.';
      } else if (erreur.code == 'email-already-in-use') {
        message = 'The account already exists for that email.';
      } else {
        message = erreur.toString();
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
    update();
  }

//firebase login methode
//
  Future<void> firebasesignin(String email, String password) async {
    try {
      UserCredential userCredential =
          await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      Get.offNamed(RoutesName.mainscreen);
      update();
    } on FirebaseAuthException catch (erreur) {
      String message = "";
      String title = erreur.code;
      if (erreur.code == 'user-not-found') {
        message = 'No user found for that email.';
      } else if (erreur.code == 'wrong-password') {
        message = 'Wrong password provided for that user.';
      } else {
        message = erreur.toString();
      }
      Get.snackbar(title, message,
          snackPosition: SnackPosition.BOTTOM,
          duration: Duration(seconds: 4),
          backgroundColor: Colors.red[800],
          colorText: Colors.white);
    }
    ;
  }

// reset password methode
  Future<void> resetpassword(String email) async {
    try {
      List<String> signInMethods =
          await FirebaseAuth.instance.fetchSignInMethodsForEmail(email);
      if (signInMethods.isEmpty) {
        Get.snackbar("erreur", 'the is no account found please subscribe',
            snackPosition: SnackPosition.BOTTOM,
            duration: Duration(seconds: 4),
            backgroundColor: Colors.red[800],
            colorText: Colors.white);
      } else {
        await FirebaseAuth.instance.sendPasswordResetEmail(email: email);
        Get.snackbar("Reset email", "Please check you email ",
            snackPosition: SnackPosition.BOTTOM,
            duration: Duration(seconds: 4),
            backgroundColor: Colors.red[800],
            colorText: Colors.white);
      }
      update();
    } catch (erreur) {
      Get.snackbar('ERRUER', erreur.toString(),
          snackPosition: SnackPosition.BOTTOM,
          duration: Duration(seconds: 4),
          backgroundColor: Colors.red[800],
          colorText: Colors.white);
    }
  }

  Future<void> signInWithGoogle() async {
    try {
      final GoogleSignInAccount? googleSignInAccount =
          await googleSignIn.signIn();

      if (googleSignInAccount != null) {
        // Get the authentication token from the GoogleSignInAccount
        final GoogleSignInAuthentication googleSignInAuthentication =
            await googleSignInAccount.authentication;

        // Create a new credential using the token
        final AuthCredential credential = GoogleAuthProvider.credential(
          accessToken: googleSignInAuthentication.accessToken,
          idToken: googleSignInAuthentication.idToken,
        );

        // Sign in to Firebase with the credential
        await FirebaseAuth.instance.signInWithCredential(credential);

        displayUserName = googleSignInAccount.displayName!;

        update();
      }
    } catch (error) {
      Get.snackbar('ERRUER', error.toString(),
          snackPosition: SnackPosition.BOTTOM,
          duration: Duration(seconds: 4),
          backgroundColor: Colors.red[800],
          colorText: Colors.white);
    }
  }
}
