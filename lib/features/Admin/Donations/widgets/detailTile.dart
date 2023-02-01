import "package:donationapp/constant/common/Text/custom-text.dart";
import "package:flutter/material.dart";

class DetailTile extends StatelessWidget {
  const DetailTile({super.key, required this.title, required this.value});
  final String title;
  final String value;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomText(text: title),
        CustomText(text: value),
      ],
    );
  }
}
