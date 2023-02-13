import 'dart:developer';

import 'package:donationapp/constant/common/NavBar/adminNavBar.dart';
import 'package:donationapp/constant/common/Text/custom-text.dart';
import 'package:donationapp/constant/common/User/user-profile-dark-image.dart';
import 'package:donationapp/constant/common/loading/loadingPage.dart';
import 'package:donationapp/constant/kconstant.dart';
import 'package:donationapp/features/Admin/Dashboard/widgets/drawer.dart';
import 'package:donationapp/features/Admin/Requests/widgets/requestTile.dart';
import 'package:donationapp/helpers/route.utils.dart';
import 'package:donationapp/routes/app.router.gr.dart';
import 'package:donationapp/store/admin-dashboard/admin-dashboard.store.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ViewRequests extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final allRequests = ref.watch(getAllRequestsProvider);
    // log("Hello ${allRequests}");

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: AdminNavBar(title: "Request "),
      ),
      drawer: Menu_Drawer(),
      body: RefreshIndicator(
        onRefresh: () async {
          ref.refresh(getAllRequestsProvider);
        },
        child: Container(
          child: allRequests.when(
            data: (data) {
              final requests = data['body'];
              log("This is a request ${requests}");
              return Container(
                margin: EdgeInsets.all(10.h),
                child: ListView.builder(
                  itemBuilder: (context, index) {
                    return InkWell(
                      child: RequestTile(
                        title: requests[index]['title'],
                        donationCategory: requests[index]['category'],
                        donerLocation: requests[index]['city'],
                      ),
                      onTap: () {
                        // routeTo("/requestDetails", context);
                        routePush(NeedDetailRoute(id: requests[index]['_id']),
                            context);
                      },
                    );
                  },
                  itemCount: requests.length,
                ),
              );
            },
            error: (e, st) {},
            loading: () => LoadingPage(),
          ),
        ),
      ),
    );
  }
}
