import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomImage extends StatelessWidget {
  const CustomImage({super.key, required this.imageName});

  final imageName;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      "assets/images/category_icons/${imageName}.png",
    );
  }
}
