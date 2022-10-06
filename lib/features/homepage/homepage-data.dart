import 'dart:developer';

import 'package:donationapp/features/homepage/homepage.dart';
import 'package:donationapp/store/homepage/homepage.store.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomePageData extends ConsumerWidget {
  const HomePageData({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final data = ref.watch(donationsOrRequestProvider("donations"));

    return Container(
      color: Colors.black,
      child: data.when(
        data: (data) {
          // log("ffg");
          return HomePage(data);
        },
        error: (h, e) {
          log('$h');
          log('$e');
          return Text("Error occures");
        },
        loading: () => const Center(
          child: CircularProgressIndicator(),
        ),
      ),
    );
  }
}
