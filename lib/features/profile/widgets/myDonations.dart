import 'dart:developer';

import 'package:donationapp/features/profile/store/profile-page.store.dart';
import 'package:donationapp/utils/store-service/store.service.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../constant/common/Text/custom-text.dart';
import '../../../constant/common/loading/loadingPage.dart';
import '../../../constant/kconstant.dart';
import '../../../helpers/time.dart';
import '../../Admin/Donations/widgets/donationTile.dart';

class MyDonations extends ConsumerWidget {
  const MyDonations({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final userId = StorageService.getId();
    //final profileController = ref.watch(profileControllerProvider);
    final donationResult = ref.watch(profileProvider(userId));
    return Scaffold(
        appBar: AppBar(
          backgroundColor: blueColor,
          title: const Text('My Donations'),
        ),
        body: Container(
          child: donationResult.when(
              data: (data) {
                final myDonations = data['body'];
                log("My Donations: ${myDonations[0]}");
                return ListView.builder(
                  itemBuilder: (ctx, index) {
                    return DonationTile(
                      donationCategory:
                          "${convertToAgo(myDonations[index]['createdAt'])}",
                      donationTitle: "${myDonations[index]['title']}",
                      donerLocation: "${myDonations[index]['city']}",
                      status: "${myDonations[index]['status']}",
                    );
                  },
                  itemCount: myDonations.length,
                );
              },
              error: (err, st) => CustomText(text: "Something went wrong"),
              loading: () => LoadingPage()),
        ));
  }
}
