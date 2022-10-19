import 'package:donationapp/constant/common/Text/custom-text.dart';
import 'package:donationapp/constant/kconstant.dart';
import 'package:donationapp/store/add-donation/add.donation.store.dart';
import 'package:donationapp/store/homepage/homepage.store.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CategoriesDropDown extends StatelessWidget {
  const CategoriesDropDown({super.key, this.refs});
  final refs;
  @override
  Widget build(BuildContext context) {
    List<String> items = ['A', 'B', 'C', 'D'];
    // final value =
    return DropdownButton<String>(
      dropdownColor: Colors.grey,
      value: refs.watch(donationCategoryProvider).isEmpty
          ? null
          : refs.watch(donationCategoryProvider),
      items: items.map((String value) {
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
        refs.read(categoriesProvider.notifier).state = value!;

        // choosenValue = value;
        // log("$choosenValue}");
      },
    );
  }
}
