import 'dart:developer';

import 'package:donationapp/constant/config/config.dart';
import 'package:get_storage/get_storage.dart';

class StorageService {
  static final box = GetStorage();

  static String getToken() {
    final token = box.read('token');
    log("this is from ${token}");
    return box.read('token') == null ? '' : box.read('token');
  }

  static String getuserType() {
    return box.read('userType') == null ? '' : box.read('userType');
  }

  // static String getUser() {
  //   return box.read('userType') == null ? '' : box.read('userType');
  // }

  static void setId(String userId) async {
    box.write("userId", userId);
  }

  static String getId() {
    return box.read('userId') == null ? '' : box.read('userId');
  }

  static bool isAuthenticated() {
    return box.read('token') != null ? true : false;
  }

  static void setToken(String token) async {
    box.write("token", token);
  }

  static void setUserType(String type) async {
    box.write("userType", type);
  }

  static void removeAll() async {
    box.erase();
  }

  static void setUser(Map<String, dynamic> user) async {
    box.write("user", user);
  }

  static getUser() {
    return box.read("user");
  }

  static void setErrorMessage(message) {
    box.write("errorMessage", message);
  }

  static void updateUserData(Map<String, dynamic> user) async {
    box.write("user", user);
  }
}
