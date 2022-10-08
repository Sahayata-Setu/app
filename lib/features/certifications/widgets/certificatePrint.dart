import 'dart:developer';

import 'package:donationapp/features/certifications/widgets/certificate.dart';
import 'package:donationapp/store/account-setting/account.setting.store.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:printing/printing.dart';

class CertificatePrint extends ConsumerWidget {
  static String routeName = '/pdfPreview';
  //var pressDataList;
  // CertificatePrint({Key? key, required this.pressDataList}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final user = ref.watch(userDetailsProvider);
    log("${user}");
    return Scaffold(
      appBar: AppBar(
        title: const Text('Report'),
      ),
      body: PdfPreview(
        build: (context) => Certificate()
            .makePdf("${user['firstName'] + " " + user['lastName']}"),
      ),
    );
  }
}
