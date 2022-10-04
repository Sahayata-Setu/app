import 'package:donationapp/constant/kconstant.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Certificate extends StatelessWidget {
  const Certificate({super.key, required this.title, this.date});
  final title;
  final date;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: blueColor,
      child: ListTile(
        title: title,
        subtitle: date,
        iconColor: whiteColor,
        trailing: Icon(Icons.file_download),
      ),
    );
  }
}
