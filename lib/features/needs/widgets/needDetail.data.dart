// import 'dart:developer';

// import 'package:donationapp/constant/common/horizontal-line/horizontal-line.dart';
// import 'package:donationapp/constant/common/loading/loadingPage.dart';
// import 'package:donationapp/features/donations/widgets/donationDetails.dart';
// import 'package:donationapp/features/needs/widgets/needDetail.dart';
// import 'package:donationapp/store/homepage/homepage.store.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';

// import 'package:auto_route/annotations.dart';

// class NeedDetailData extends ConsumerWidget {
//   const NeedDetailData({super.key, @PathParam('id') this.id});
//   final id;

//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     // log("this is id$id}");
//     final data = ref.watch(singleNeedDataProvider(id));
//     log("this is from need data ${data}");
//     return Container(
//       color: Colors.black,
//       child: data.when(
//           data: (data) {
//             // log("ffg");
//             return NeedDetail(
//               data: data,
//             );
//           },
//           error: (h, e) {
//             // log('$h');
//             // log('$e');
//             return Text("Error occures!");
//           },
//           loading: () => LoadingPage()),
//     );
//   }
// }
