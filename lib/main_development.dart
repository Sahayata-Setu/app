import 'package:expensetracker/constant/config/flavor_config.dart';
import 'package:expensetracker/main_common.dart';
import 'package:flutter/material.dart';

void main() {
  // Inject our own configurations

  mainCommon(
    FlavorConfig()
      ..appTitle = "Donation"
      ..apiEndpoint = {
        Endpoints.items: "random.api.dev/items",
        Endpoints.details: "random.api.dev/item"
      }
      ..appName = 'Donation'
      // ..imageLocation = "assets/images/coffee_bean.jpg"
      ..theme = ThemeData.light().copyWith(
        primaryColor: const Color(0xFF123456),
        appBarTheme: ThemeData.light().appBarTheme.copyWith(
              backgroundColor: Color.fromARGB(255, 133, 116, 99),
            ),
      ),
  );
}
