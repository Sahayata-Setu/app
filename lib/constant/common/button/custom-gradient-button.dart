import 'package:donationapp/constant/kconstant.dart';
import 'package:donationapp/features/otp/store/mobile-number.store.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class CustomGradientButtom extends ConsumerWidget {
  CustomGradientButtom({
    super.key,
    this.buttonText,
    required this.fn,
  });
  final buttonText;
  VoidCallback fn;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final loading = ref.watch(loadingMobileProv);
    return Container(
      height: 50.0,
      width: 150.0,
      child: ElevatedButton(
        onPressed: fn,
        style: ButtonStyle(
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0),
            ),
          ),
          padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
            EdgeInsets.all(0),
          ),
        ),
        child: Ink(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xff374ABE), Color(0xff64B6FF)],
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
              ),
              borderRadius: BorderRadius.circular(30.0)),
          child: Container(
            constraints: BoxConstraints(maxWidth: 300.0, minHeight: 50.0),
            alignment: Alignment.center,
            child: loading
                ? LoadingAnimationWidget.threeRotatingDots(
                    color: blueBackgroundColor, size: 20.h)
                : Text(
                    "${buttonText}",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white),
                  ),
          ),
        ),
      ),
    );
  }
}
