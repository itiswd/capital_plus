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

  static Future<void> setBoolList(String key, List<bool> value) async {
    List<String> stringList = value.map((e) => e.toString()).toList();
    await _instance.setStringList(key, stringList);
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
static List<bool> getBoolList(String key, {int length = 0}) {
  // Retrieve the list of strings from SharedPreferences
  List<String>? stringList = _instance.getStringList(key);

  // If the string list is null or empty, return a list of 'length' elements, all set to 'false'
  if (stringList == null || stringList.isEmpty) {
    return List<bool>.generate(length, (_) => false);
  }

  // Convert the list of strings to a list of booleans, defaulting to 'false' for any unrecognized value
  return stringList.map((e) => e == 'true').toList();
}
}
