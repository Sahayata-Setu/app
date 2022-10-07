import 'package:donationapp/features/certifications/widgets/certificate.dart';
import 'package:flutter/material.dart';
import 'package:printing/printing.dart';

class CertificatePrint extends StatelessWidget {
  static String routeName = '/pdfPreview';
  //var pressDataList;
  // CertificatePrint({Key? key, required this.pressDataList}) : super(key: key);

  @override
  Widget build(BuildContext context) {
   // final user = 
    return Scaffold(
      appBar: AppBar(
        title: const Text('Report'),
      ),
      body: PdfPreview(
        build: (context) => Certificate().makePdf("Frehiwot Haile"),
      ),
    );
  }
}
