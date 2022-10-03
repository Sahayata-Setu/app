import 'package:donationapp/constant/common/Text/custom-text.dart';
import 'package:donationapp/constant/kconstant.dart';
import 'package:donationapp/store/homepage/homepage.store.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CategoriesDropDown extends StatelessWidget {
  const CategoriesDropDown({super.key, this.ref});
  final ref;
  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      dropdownColor: Colors.grey,
      value: ref.watch(categoriesProvider).isEmpty
          ? null
          : ref.watch(categoriesProvider),
      items: <String>['A', 'B', 'C', 'D'].map((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: CustomText(
            text: value,
            fontColor: blackColor,
            fontSize: 16.sp,
          ),
        );
      }).toList(),
      hint: CustomText(
        text: "Categories",
        fontColor: blackColor,
        fontWeight: FontWeight.bold,
        fontSize: 16.sp,
      ),
      onChanged: (value) {
        ref.read(categoriesProvider.notifier).state = value!;

        // choosenValue = value;
        // log("$choosenValue}");
      },
    );
  }
}
