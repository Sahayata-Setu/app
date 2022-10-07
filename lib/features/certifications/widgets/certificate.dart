import 'dart:io';
import 'package:donationapp/constant/kconstant.dart';
import 'package:flutter/services.dart';

import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:flutter/material.dart';

class Certificate {
  final pdf = pw.Document();
  Uint8List? logobytes;
  PdfImage? _logoImage;

  // fetch() async {
  //   ByteData _bytes = await rootBundle.load('assets/images/certificateBack.png');
  //   logobytes = _bytes.buffer.asUint8List();
  //   // setState(() {
  //   //   try {
  //   _logoImage = PdfImage.file(
  //     pdf.document,
  //     bytes: logobytes!,
  //   );
  // }
  //       );
  //     } catch (e) {
  //       print("catch--  $e");
  //       logobytes = null;
  //       _logoImage = null;
  //     }
  //   });
  // }

  // Printing.layoutPdf(onLayout: (PdfPageFormat format) async {
  //   return pdf.save();
  // });
  //}

  Future<Uint8List> makePdf(String name) async {
    List<String> splitted = [];

    // final imageLogo = MemoryImage(
    //     (await rootBundle.load('assets/images/veg.png')).buffer.asUint8List());
    // ByteData _bytes =
    //     await rootBundle.load('assets/images/certificateBack.png');
    // logobytes = _bytes.buffer.asUint8List();
    // // setState(() {
    // //   try {
    // _logoImage = PdfImage.file(pdf.document, bytes: logobytes!);
    final image = pw.MemoryImage(
        (await rootBundle.load('assets/images/cert.png')).buffer.asUint8List());
    pdf.addPage(pw.Page(
        pageTheme: pw.PageTheme(
          orientation: pw.PageOrientation.landscape,
          pageFormat: PdfPageFormat.a4.landscape,
        ),
        build: (pw.Context context) => pw.Stack(children: [
              pw.Container(
                  width: double.infinity,
                  height: double.infinity,
                  decoration: pw.BoxDecoration(
                      // image: _logoImage!
                      ),
                  margin: pw.EdgeInsets.symmetric(vertical: 15),
                  alignment: pw.Alignment.center,
                  child: pw.Image(image,
                      height: PdfPageFormat.a4.width,
                      width: PdfPageFormat.a4.height)),
              pw.Positioned(
                  left: 200,
                  bottom: 150,
                  //margin: pw.EdgeInsets.all(70),
                  child: pw.Text(name.toUpperCase(),
                      style: pw.TextStyle(
                        fontSize: 40,
                      )))
            ])));
    return pdf.save();
  }
}
