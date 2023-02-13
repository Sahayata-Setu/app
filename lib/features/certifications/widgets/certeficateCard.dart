import 'package:donationapp/constant/kconstant.dart';
import 'package:donationapp/helpers/route.utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class CertificateCard extends StatelessWidget {
  const CertificateCard({super.key, required this.title, this.date});
  final title;
  final date;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        routePush("/certificatePreview", context);
      },
      child: Container(
        color: blueColor,
        child: ListTile(
          title: title,
          subtitle: date,
          iconColor: whiteColor,
          trailing: Icon(Icons.file_download),
        ),
      ),
    );
  }
}
