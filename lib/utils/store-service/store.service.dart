import 'dart:developer';

import 'package:donationapp/constant/config/config.dart';
import 'package:get_storage/get_storage.dart';

class StorageService {
  static final box = GetStorage();

  static String getToken() {
    return box.read('token');
  }

  static bool isAuthenticated() {
    return box.read('token') != null ? true : false;
  }

  static void setToken(String token) async {
    box.write("token", token);
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

  static void updateUserData(Map<String, dynamic> user) async {
    box.write("user", user);
  }
}
