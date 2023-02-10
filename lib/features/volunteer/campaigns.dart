import 'dart:developer';

import 'package:donationapp/constant/common/Text/custom-text.dart';
import 'package:donationapp/constant/common/loading/loadingPage.dart';
import 'package:donationapp/constant/kconstant.dart';
import 'package:donationapp/features/Admin/Donations/widgets/donationTile.dart';
import 'package:donationapp/features/donations_claim/widgets/donations_claimcard.dart';
import 'package:donationapp/features/volunteer/store/volunteer.store.dart';
import 'package:donationapp/helpers/time.dart';
import 'package:donationapp/store/homepage/homepage.store.dart';
import 'package:donationapp/utils/store-service/store.service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MyCampaigns extends ConsumerWidget {
  const MyCampaigns({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final userId = StorageService.getId();
    final allCampaigns = ref.watch(allVolunteerByUserIdProvider(userId));
    return Scaffold(
      appBar: AppBar(
        backgroundColor: blueColor,
        title: const Text('Campaigns'),
      ),
      body: Container(
        child: allCampaigns.when(
            data: (data) {
              final allCamp = data['body'];
              log("All Campaigns: ${allCamp[0]}");
              return ListView.builder(
                itemBuilder: (ctx, index) {
                  return DonationTile(
                    donationCategory:
                        "${convertToAgo(allCamp[index]['createdAt'])}",
                    donationTitle: "${allCamp[index]['title']}",
                    donerLocation: "${allCamp[index]['location']}",
                    status: "${allCamp[index]['status']}",
                  );
                },
                itemCount: allCamp.length,
              );
            },
            error: (err, st) => CustomText(text: "Something went wrong"),
            loading: () => LoadingPage()),
      ),
    );
  }
}
