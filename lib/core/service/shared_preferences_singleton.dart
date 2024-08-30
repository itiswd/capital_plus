import 'package:shared_preferences/shared_preferences.dart';

class SharedPref {
  static late SharedPreferences _instance;

  // Initialize SharedPreferences instance
  static Future<void> init() async {
    _instance = await SharedPreferences.getInstance();
  }

  // Setters
  static Future<void> setBool(String key, bool value) async {
    await _instance.setBool(key, value);
  }

  static Future<void> setString(String key, String value) async {
    await _instance.setString(key, value);
  }

  static Future<void> setInt(String key, int value) async {
    await _instance.setInt(key, value);
  }


  // Getters
  static bool getBool(String key, {bool defaultValue = false}) {
    return _instance.getBool(key) ?? defaultValue;
  }

  static String getString(String key, {String defaultValue = ""}) {
    return _instance.getString(key) ?? defaultValue;
  }

  static int getInt(String key, {int defaultValue = -1}) {
    return _instance.getInt(key) ?? defaultValue;
  }

}
