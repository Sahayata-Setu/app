import 'package:donationapp/features/new-message/chat-detail.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget buildPopupDialog(
  BuildContext context,
  message,
  donor_name,
  donor_id,
) {
  // final message;
  return AlertDialog(
    // title: Text("${message}"),
    shape: ShapeBorder.lerp(
      RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(18.r),
      ),
      RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(18.r),
      ),
      1.0,
    ),
    content: Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Text(
          "${message}",
        ),
        SizedBox(
          height: 10.h,
        ),
        ElevatedButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return ChatDetailPage(
                name: donor_name,
                // sender: senderId,
                reciever: donor_id,
              );
            }));
            // Navigator.of(context).pop();
          },
          // textColor: Theme.of(context).primaryColor,
          child: const Text('Ok'),
        ),
      ],
    ),
    // actions: <Widget>[
    //   ElevatedButton(
    //     onPressed: () {
    //       Navigator.of(context).pop();
    //     },
    //     // textColor: Theme.of(context).primaryColor,
    //     child: const Text('Close'),
    //   ),
    // ],
  );
}
