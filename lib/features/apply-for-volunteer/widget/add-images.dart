import 'dart:developer';

import 'package:donationapp/constant/common/Text/custom-text.dart';
import 'package:donationapp/constant/kconstant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';

class AddImage extends StatelessWidget {
  const AddImage({super.key});

  @override
  Widget build(BuildContext context) {
    PickedFile file;
    final ImagePicker _picker = ImagePicker();

    void takePhoto(ImageSource source) async {
      final pickedFile = await _picker.pickImage(source: source);
      // log("${pickedFile}");
    }
    // selectImage() async {
    //   final images = await FilePicker.platform.pickFiles(
    //     allowMultiple: false,
    //   );
    //   if (images == null) return;
    //   final paths = images.files.map((PlatformFile image) => image.path);
    //   List req = [];
    //   for (var item in paths) {
    //     req.add({"name": "image", 'filePath': item});
    //   }

    //   ref.read(imagesProvider.notifier).state = req[0];
    // }

    bottomSheet() {
      log("this is from modal");
      return showModalBottomSheet(
        context: context,
        builder: ((builder) {
          return Container(
            height: 120.h,
            color: blueColor,
            child: Column(
              children: [
                SizedBox(
                  height: 8.h,
                ),
                CustomText(
                  fontColor: whiteColor,
                  text: "Add images",
                  fontSize: 18.sp,
                ),
                SizedBox(
                  height: 10.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        CustomText(
                          fontColor: whiteColor,
                          text: "Camera",
                          fontSize: 18.sp,
                        ),
                        GestureDetector(
                          onTap: () {
                            takePhoto(ImageSource.camera);
                          },
                          child: Container(
                            // backgroundColor: Colors.grey,
                            height: 30.h,
                            width: 30.w,
                            decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.circular(30.r),
                            ),
                            child: Icon(
                              Icons.camera,
                              color: blackColor,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        CustomText(
                          fontColor: whiteColor,
                          text: "Gallery",
                          fontSize: 18.sp,
                        ),
                        GestureDetector(
                          onTap: () {
                            takePhoto(ImageSource.gallery);
                          },
                          child: Container(
                            // backgroundColor: Colors.grey,
                            height: 30.h,
                            width: 30.w,
                            decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.circular(30.r),
                            ),

                            child: Icon(
                              Icons.add,
                              color: blackColor,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                )
              ],
            ),
          );
        }),
      );
    }

    return Stack(
      children: [
        Container(
          height: 150.h,
          width: double.infinity,
          // color: Colors.white,
          decoration: BoxDecoration(
            border: Border.all(
              color: whiteColor,
            ),
          ),
          // child: Image.asset(
          //   "assets/images/veg.png",
          //   fit: BoxFit.fill,
          // ),
        ),
        Positioned(
          child: Container(
            padding: EdgeInsets.only(
              left: kPadding.w + 120.w,
              top: kPadding.h + 40.h,
            ),
            // margin: EdgeInsetsGeometry,
            child: InkWell(
              onTap: () {
                bottomSheet();
              },
              child: Icon(
                Icons.add,
                size: 30.h,
                color: whiteColor,
              ),
            ),
          ),
        )
      ],
    );
  }
}
