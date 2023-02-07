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
  });
  final refs;
  final name;
  final list;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.only(bottom: 10.w, top: 10.h),
          child: CustomText(
            text: name,
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
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(6.r),
            ),
            hintText: "Select Options",
          ),
          onChanged: (value) {
            refs.state[name] = value.toString();
            // ref.read(signUpDetailsProvider.notifier).state['gender'] =
            //     value.toString();
          },
        ),
      ],
    );
  }
}
