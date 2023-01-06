import 'package:auto_route/auto_route.dart';
import 'package:donationapp/constant/common/Text/custom-text.dart';
import 'package:donationapp/constant/kconstant.dart';
import 'package:donationapp/features/volunteer/widgets/common-volunteer.dart';
import 'package:donationapp/features/volunteer/widgets/volunteer-appbar.dart';
import 'package:donationapp/helpers/route.utils.dart';
import 'package:donationapp/routes/app.router.gr.dart';
import 'package:donationapp/store/login/login.store.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Volunteer extends ConsumerWidget {
  const Volunteer({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return CommonVolunteer(
      component: Column(
        children: [
          CustomText(text: "This is volunteer page"),
        ],
      ),
    );
  }
}
