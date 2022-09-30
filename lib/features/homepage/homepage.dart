import 'dart:developer';

import 'package:expensetracker/app.dart';
import 'package:expensetracker/utils/store-service/store.service.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final token = StorageService.getToken();
    log("this is tike${token}");
    return App(component: Column());
  }
}
