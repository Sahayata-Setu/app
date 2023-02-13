import 'dart:developer';

import 'package:donationapp/constant/common/Text/custom-text.dart';
import 'package:donationapp/constant/common/textfield/CustomTextArea.dart';
import 'package:donationapp/constant/kconstant.dart';
import 'package:donationapp/features/Admin/add-preferred-locations/store/add-preferred.store.dart';
import 'package:donationapp/helpers/route.utils.dart';
import 'package:donationapp/store/login/login.store.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class AddPreferredLocation extends ConsumerWidget {
  const AddPreferredLocation({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    //JSON data for preferred location
    final preferredLocationDetails = ref.watch(preferredLocationDataProvider);

    //Provider for adding preferred location
    final preferredRef = ref.watch(addPreferredLoationProvider);
    //Loadin Indicator
    final loading = ref.watch(loadingPref);

    handleSumbit() async {
      await preferredRef
          .addPreferredLocation(preferredLocationDetails)
          .then((val) {
        //Show sanckbar with message
        final snackBar = SnackBar(
          content: Text('${val['message']}'),
        );
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
        //Refresh the textfields
        ref.refresh(preferredLocationDataProvider);

        // Refresh Prefred Location
        ref.refresh(preferredLocationProvider);
        //Route to new admin dashboard
        routeTo("/new-admin-dashboard", context);

        // log("Preferred Location Added: $val");
      });
      // ref.refresh(preferredLocationDataProvider);
    }

    return Scaffold(
      appBar: AppBar(
        title: CustomText(text: "Add Preferred location"),
        backgroundColor: blueColor,
      ),
      body: Container(
        padding: EdgeInsets.only(left: kPadding.w, right: kPadding.w),
        child: SingleChildScrollView(
          child: Column(children: [
            // CustomText(text: "Add Preferred location"),
            // CustomTextArea(text: ,)
            CustomTextArea(
              text: "City",
              refs: ref.read(preferredLocationDataProvider.notifier),
              name: "city",
            ),
            CustomTextArea(
              text: "Title",
              refs: ref.read(preferredLocationDataProvider.notifier),
              name: "title",
            ),
            CustomTextArea(
              text: "Address",
              refs: ref.read(preferredLocationDataProvider.notifier),
              name: "address",
            ),
            CustomTextArea(
              text: "Landmark",
              refs: ref.read(preferredLocationDataProvider.notifier),
              name: "landmark",
            ),
            CustomTextArea(
              text: "Contact",
              refs: ref.read(preferredLocationDataProvider.notifier),
              name: "contact",
            ),
            loading
                ? LoadingAnimationWidget.waveDots(
                    color: blueBackgroundColor, size: 80.h)
                : ElevatedButton(
                    onPressed: () {
                      handleSumbit();
                    },
                    child: CustomText(
                      text: "Add",
                    ))
          ]),
        ),
      ),
    );
  }
}
