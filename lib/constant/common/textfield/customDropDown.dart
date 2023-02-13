import 'package:donationapp/constant/common/Text/custom-text.dart';
import 'package:donationapp/constant/kconstant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MainCustomDropDown extends StatelessWidget {
  const MainCustomDropDown({
    super.key,
    this.refs,
    this.name,
    this.list,
    this.title,
  });
  final refs;
  final name;
  final title;
  final list;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.only(bottom: 10.w, top: 10.h),
          child: CustomText(
            text: title,
            fontColor: blackColor,
            fontSize: 16.sp,
          ),
        ),
        DropdownButtonFormField(
          items: list.map<DropdownMenuItem<String>>((String category) {
            return DropdownMenuItem(
              value: category,
              child: CustomText(text: category),
            );
          }).toList(),
          borderRadius: BorderRadius.circular(12.r),
          // style: ,
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(6.r),
            ),
            hintText: "Select Options",
          ),
          onChanged: (value) {
            refs.state[name] = value.toString();
          },
        ),
      ],
    );
  }
}
