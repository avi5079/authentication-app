import 'package:authentication_app/welcome_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

import 'login_page.dart';

class AuthController extends GetxController {
  static AuthController instance = Get.find();
  // AuthController.instance..
  late Rx<User?> _user; // email, password, name ..
  FirebaseAuth auth = FirebaseAuth.instance;

  @override
  void onReady() {
    super.onReady();
    _user = Rx<User?>(auth.currentUser);
    // user would be notified
    _user.bindStream(auth.userChanges());
    ever(_user, _initialScreen);
  }

  _initialScreen(User? user) {
    if (user == null) {
      Get.offAll(() => const LoginPage());
    } else {
      Get.offAll(() => const WelcomePage());
    }
  }
}
