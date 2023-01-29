import 'package:donationapp/features/campaigns/services/campaign-services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final campaignDetails = StateProvider(
  (ref) => {
    "title": "",
    "location": "",
    "eventTime": "",
    "description": "",
    // "images":"",
  },
);

//get all neeeds
final getApprovedCampaignsProvider =
    FutureProvider.family<Map<String, dynamic>, String>(
  (ref, userId) {
    return ref.watch(campaignService).getApprovedCampaigns();
  },
);

final campaignPhotoProvider = StateProvider((ref) => []);
final startDateProvider = StateProvider((ref) => (DateTime.now()));
final endDateProvider = StateProvider((ref) => (DateTime.now()));
final campaignLoading = StateProvider((ref) => (false));

class CampaignNotifier extends ChangeNotifier {
  CampaignNotifier(this.read) : super();
  final Reader read;

  createCampaign(data, image, startDate, endDate) async {
    final campaignSer = read(campaignService);
    read(campaignLoading.notifier).state = true;
    try {
      final resp =
          await campaignSer.createCampaign(data, image, startDate, endDate);
      if (resp != null) {
        read(campaignLoading.notifier).state = false;
      }
      return resp;
    } catch (e) {
      throw Exception(e);
    }
  }
}

final campaignProvider = ChangeNotifierProvider.autoDispose<CampaignNotifier>(
    (ref) => CampaignNotifier(ref.read));
