import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:uidesign/rest_api/api.dart';

class AuthService {
  Future<GoogleSignInAccount?> googleSign() async {
    try {
      GoogleSignIn googleSignIn = GoogleSignIn();
      var result = await googleSignIn.signIn();
      return result;
    } catch (message) {
      logs("error google sign-->$message");
      return null;
    }
  }

  Future<LoginResult?> facebookLogin() async {
    try {
      final value =
   //  await FacebookAuth.login(permissions: ['public_profile', 'email']);
      await FacebookAuth.instance.login();
      logs("values-->${value.message}");
      if (value.status == LoginStatus.success) {
        final userData = await FacebookAuth.instance.getUserData();
        logs('facebook_login_data:-$userData');
        return value;
      }
    } catch (message) {
      logs("error-->$message");
      return null;
    }
  }
}