import 'dart:developer';

import 'package:donationapp/features/homepage/homepage.dart';
import 'package:donationapp/features/profile/user-profile.dart';
import 'package:donationapp/store/account-setting/account.setting.store.dart';
import 'package:donationapp/store/homepage/homepage.store.dart';
import 'package:donationapp/store/single-user/single-user.store.dart';
import 'package:donationapp/utils/store-service/store.service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class UserProfileData extends ConsumerWidget {
  const UserProfileData({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final id = StorageService.getId();

    final data = ref.watch(singleUserDataProvider(id));

    return Container(
      color: Colors.black,
      child: data.when(
        data: (data) {
          // log("ffg");
          return UserProfile(data);
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
