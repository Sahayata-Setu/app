import 'dart:developer';

import 'package:donationapp/constant/common/Text/custom-text.dart';
import 'package:donationapp/features/certifications/widgets/certificate.dart';
import 'package:donationapp/store/account-setting/account.setting.store.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:printing/printing.dart';

import '../../../utils/store-service/store.service.dart';
import '../store/certificate.store.dart';

class CertificatePrint extends ConsumerWidget {
  static String routeName = '/pdfPreview';
  //var pressDataList;
  // CertificatePrint({Key? key, required this.pressDataList}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final user = ref.watch(userDetailsProvider);
    final userId = StorageService.getId();
    final points = ref.watch(pointsProvider(userId));
    log("${user}");
    log("${points}");

    return Scaffold(
        appBar: AppBar(
          title: const Text('Certificate'),
        ),
        body: points.when(
          data: (data) {
            return PdfPreview(
              build: (context) => Certificate().makePdf(
                  "${user['firstName'] + " " + user['lastName']}",
                  data['body']),
            );
          },
          error: (e, st) => CustomText(text: "Ërror"),
          loading: () => Container(),
        ));
  }
}
