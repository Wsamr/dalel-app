import 'package:shared_preferences/shared_preferences.dart';

class CacheHelper {
  static late SharedPreferences sharedPreferences;

  //!  init of cache
  init() async {
    sharedPreferences = await SharedPreferences.getInstance();
  }

  //! this method for put data in local database
  Future<void> saveData(String key, dynamic value) async {
    if (value is String) {
      await sharedPreferences.setString(key, value);
    } else if (value is int) {
      await sharedPreferences.setInt(key, value);
    } else if (value is double) {
      await sharedPreferences.setDouble(key, value);
    } else if (value is bool) {
      await sharedPreferences.setBool(key, value);
    }
  }

  //! get data already saved in local database
  dynamic getData(String key, Type type) {
    if (type == String) {
      return sharedPreferences.getString(key);
    } else if (type == int) {
      return sharedPreferences.getInt(key);
    } else if (type == double) {
      return sharedPreferences.getDouble(key);
    } else if (type == bool) {
      return sharedPreferences.getBool(key);
    }
  }

  //! remove data from local database

  Future<bool> removeData(String key) async {
    return await sharedPreferences.remove(key);
  }

  //!check  if key in local database

  Future<bool> containKey(String key) async {
    return sharedPreferences.containsKey(key);
  }

  //! clear all data in local
  Future<bool> clearData(String key) async {
    return sharedPreferences.clear();
  }
}
