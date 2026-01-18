import 'package:shared_preferences/shared_preferences.dart';

class SessionData {
  static bool? isLogin;
  static String? emailId;

  static Future<void> storeSessionData(
      {required bool loginData, required String emailId}) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.setBool("loginScreen", loginData);
    sharedPreferences.setString("email", emailId);
    getSessionData();
  }

  static Future<void> getSessionData() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    isLogin = sharedPreferences.getBool("loginScreen") ?? false;
    emailId = sharedPreferences.getString("email") ?? "";
  }
}
