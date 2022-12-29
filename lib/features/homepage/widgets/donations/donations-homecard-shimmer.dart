import 'package:donationapp/constant/common/shimmerLoading/shimmerLoading.dart';
import 'package:donationapp/constant/kconstant.dart';
import 'package:donationapp/features/homepage/widgets/donations/donationHomeCards.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';

class HomeCardShimmerLoading extends StatelessWidget {
  const HomeCardShimmerLoading({super.key});

  @override
  Widget build(BuildContext context) {
    // const _shimmerGradient = LinearGradient(
    //   colors: [
    //     Color(0xFFEBEBF4),
    //     Color(0xFFF4F4F4),
    //     Color(0xFFEBEBF4),
    //   ],
    //   stops: [
    //     0.1,
    //     0.3,
    //     0.4,
    //   ],
    //   begin: Alignment(-1.0, -0.3),
    //   end: Alignment(1.0, 0.3),
    //   tileMode: TileMode.clamp,
    // );
    return ShimmerLoading(
        component: SizedBox(
            height: 360.h,
            // width: 280.w,
            child: ListView.builder(
              padding: EdgeInsets.only(left: kPadding),
              scrollDirection: Axis.horizontal,
              itemCount: 2,
              itemBuilder: (context, index) => Container(
                margin: EdgeInsets.all(10.w),
                width: 250.w,
                child: Card(
                  margin: EdgeInsets.zero,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.r),
                  ),
                  elevation: 0,
                  shadowColor: Colors.transparent,
                  // child: DonationHomeCards(),
                ),
              ),
            ))
        // gradient: _shimmerGradient,
        );
  }
}
