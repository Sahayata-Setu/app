import 'package:donationapp/constant/common/Text/custom-text.dart';
import 'package:donationapp/store/signup/signup.store.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomDropDown extends StatelessWidget {
  const CustomDropDown(
      {super.key, this.refs, this.list, this.label, this.name});

  final refs;
  final list;
  final label;
  final name;

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField(
      items: list.map((String category) {
        return DropdownMenuItem(
          value: category,
          // child: Text(category),
          child: CustomText(
            text: category,
          ),
        );
      }).toList(),
      decoration: InputDecoration(
        label: CustomText(
          text: "${label}",
        ),
        contentPadding: EdgeInsets.all(
          10.h,
        ),
      ),
      onChanged: (val) {
        refs.state[name] = val.toString();

        // log("This is dropdown val ${val}");
      },
    );
  }
}
