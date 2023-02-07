import 'dart:developer';
import 'package:donationapp/app.dart';
import 'package:donationapp/constant/common/GoogleButtomNavBar/GoogleButtomNavBar.dart';
import 'package:donationapp/constant/common/NavBar/navbar.dart';
import 'package:donationapp/constant/common/Text/custom-text.dart';
import 'package:donationapp/constant/common/button/primary-custom-botton.dart';
import 'package:donationapp/constant/common/textfield/CustomTextArea.dart';
import 'package:donationapp/constant/kconstant.dart';
import 'package:donationapp/constant/modules/signup/signup.class.dart';
import 'package:donationapp/constant/common/textfield/CustomTextField.dart';
import 'package:donationapp/features/login/widgets/logo-area.dart';
import 'package:donationapp/helpers/route.utils.dart';
import 'package:donationapp/store/login/login.store.dart';
import 'package:donationapp/utils/store-service/store.service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:firebase_messaging/firebase_messaging.dart';

class Login extends ConsumerStatefulWidget {
  const Login({super.key});
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends ConsumerState<Login> {
  String appToken = "";
  @override
  void initState() {
    // TODO: implement initState
    FirebaseMessaging _firebase = FirebaseMessaging.instance;

    _firebase.getToken().then((value) {
      log('login $value');
      setState(() {
        appToken = value.toString();
      });
    });
    super.initState();
    // super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final loginDetails = ref.watch(loginDetailsProvider);
    final loginref = ref.watch(loginProvider);
    // log("$signUpDetails");
    final state = ref.watch(stateProvider);
    final getUserType = StorageService.getuserType();
    final obText = ref.watch(obscureTextProvider);
    // log("this is from ob text ${loginDetails}");
    // StorageService.getuserType();

    handleSumbit() async {
      try {
        final resp = await loginref
            .signup({...loginDetails, "registrationToken": appToken});
        log("this is resp${resp['userRole']}");
        // log("user type ${getUserType}");
        if (resp['userRole'] == "user") {
          replaceRouteTo('/homepage', context);
          const snackBar = SnackBar(
            content: Text('Logged In'),
          );
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
          pop(context);
        } else if (resp['userRole'] == 'volunteer') {
          replaceRouteTo("/volunteer", context);
        } else if (resp['userRole'] == "admin") {
          log("Hello");
          replaceRouteTo("/admin-dashboard", context);
          const snackBar = SnackBar(
            content: Text('Logged in'),
          );
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        }

        // ignore: use_build_context_synchronously
      } catch (e) {
        log('$e the success');
        const snackBar = SnackBar(
          content: Text('Please enter correct email or password'),
        );
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
        // CustomScaffoldMessenger.error(
        //     "Please enter correct email or password", context);
      }
    }

    return App(
      appbar: NavBar(
        title: "LOGIN",
        showBadge: false,
      ),
      component: Container(
        // height: 600.h,
        height: MediaQuery.of(context).size.height - 70.h,
        color: SignupKConstant.backgroundColor,
        child: Container(
          padding: EdgeInsets.only(
            left: kPadding.w,
            right: kPadding.w,
            top: kPadding.h + 30,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              LogoArea(),

              // Old Email Field
              // CustomTextField(
              //   refs: ref.read(loginDetailsProvider.notifier),
              //   label: "Email",
              //   name: "email",
              // ),

              // New Email Field
              CustomTextArea(
                text: "Email",
                refs: ref.read(loginDetailsProvider.notifier),
                name: "email",
              ),

              // New Password Field
              Container(
                margin: EdgeInsets.only(
                  bottom: 10.h,
                ),
                child: CustomTextArea(
                  text: "Password",
                  name: "password",
                  isObscure: true,
                  refs: ref.read(loginDetailsProvider.notifier),
                ),
              ),

              // Old Password Field
              // Container(
              //   padding: EdgeInsets.only(
              //     bottom: kPadding.h,
              //   ),
              //   child: TextFormField(
              //     obscureText: true,
              //     initialValue: "",
              //     // maxLines: lines == null ? null : lines,
              //     style: const TextStyle(
              //       color: blackColor,
              //     ),
              //     // obscureText: obText,
              //     decoration: const InputDecoration(
              //       hintText: "Password",
              //       hintStyle: TextStyle(
              //         color: Colors.grey,
              //       ),
              //       fillColor: whiteColor,
              //       // border: InputBorder.none,
              //       enabledBorder: UnderlineInputBorder(
              //         borderSide: BorderSide(
              //           color: blackColor,
              //         ),
              //       ),
              //       focusedBorder: UnderlineInputBorder(
              //         borderSide: BorderSide(
              //           color: blackColor,
              //         ),
              //       ),
              //       // fillColor: whiteColor,
              //     ),
              //     onChanged: (value) {
              //       ref.read(loginDetailsProvider.notifier).state["password"] =
              //           value;
              //     },
              //   ),
              // ),

              //
              state
                  ? CircularProgressIndicator()
                  : ElevatedButton(
                      onPressed: () {
                        // replaceRouteTo("/homepage", context);
                        // handleSumbit();
                        // log("${loginDetails}");
                        handleSumbit();
                      },
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(blueColor),
                      ),
                      child: Text("Login"),
                    ),

              // PrimaryCustomButton(
              //     child: CustomText(
              //       text: "Login",
              //       fontSize: 16.sp,
              //     ),
              //     fn: () {
              //       handleSumbit();
              //     }),

              Expanded(
                child: Container(
                  alignment: Alignment.bottomCenter,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomText(
                        text: "Don't have an account ?",
                        fontSize: 14.sp,
                      ),
                      TextButton(
                        onPressed: () {
                          replaceRouteTo("/signup", context);
                        },
                        child: CustomText(
                          text: "Sign Up",
                          fontSize: 14.sp,
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      isAdmin: false,
      bottomNavBar: const GoogleButtomNavBar(showBottomNavBar: false),
    );
  }
}






































// import 'dart:developer';

// import 'package:donationapp/app.dart';
// import 'package:donationapp/constant/common/BottomNavBar/BottomNavBar.dart';
// import 'package:donationapp/constant/common/NavBar/navbar.dart';
// import 'package:donationapp/constant/common/Text/custom-text.dart';
// import 'package:donationapp/constant/kconstant.dart';
// import 'package:donationapp/constant/modules/signup/signup.class.dart';
// import 'package:donationapp/constant/common/textfield/CustomTextField.dart';
// import 'package:donationapp/features/login/widgets/logo-area.dart';
// import 'package:donationapp/helpers/custom.toast.dart';
// import 'package:donationapp/helpers/route.utils.dart';
// import 'package:donationapp/store/login/login.store.dart';
// import 'package:donationapp/utils/store-service/store.service.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';

// class Login extends ConsumerWidget {
//   const Login({super.key});

//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     final loginDetails = ref.watch(loginDetailsProvider);
//     final loginref = ref.watch(loginProvider);
//     // log("$signUpDetails");
//     final state = ref.watch(stateProvider);
//     final getUserType = StorageService.getuserType();
//     final obText = ref.watch(obscureTextProvider);
//     // log("this is from ob text ${loginDetails}");
//     // StorageService.getuserType();

//     handleSumbit() async {
//       try {
//         final resp = await loginref.signup(loginDetails);
//         log("this is resp${resp['userRole']}");
//         // log("user type ${getUserType}");
//         if (resp['userRole'] == "user") {
//           // ignore: use_build_context_synchronously
//           // log("this is message");
//           replaceRouteTo('/homepage', context);
//           const snackBar = SnackBar(
//             content: Text('Logged In'),
//           );
//           ScaffoldMessenger.of(context).showSnackBar(snackBar);
//           pop(context);
//           // CustomScaffoldMessenger.info("Sucessfully logged In", context);
//         } else if (resp['userRole'] == "admin") {
//           replaceRouteTo("/admin-dashboard", context);
//           const snackBar = SnackBar(
//             content: Text('Logged in'),
//           );
//           ScaffoldMessenger.of(context).showSnackBar(snackBar);
//           // CustomScaffoldMessenger.info("Sucessfully logged In", context);
//         }

//         // ignore: use_build_context_synchronously

//       } catch (e) {
//         log('$e the success');
//         const snackBar = SnackBar(
//           content: Text('Please enter correct email or password'),
//         );
//         ScaffoldMessenger.of(context).showSnackBar(snackBar);
//         // CustomScaffoldMessenger.error(
//         //     "Please enter correct email or password", context);
//       }
//     }

//     return App(
//       appbar: NavBar(
//         title: "LOGIN",
//         showBadge: false,
//       ),
//       component: Container(
//         // height: 600.h,
//         height: MediaQuery.of(context).size.height,
//         color: SignupKConstant.backgroundColor,
//         child: Container(
//           padding: EdgeInsets.only(
//             left: kPadding.w,
//             right: kPadding.w,
//             top: kPadding.h + 30,
//           ),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               LogoArea(),

//               //Email field
//               CustomTextField(
//                 refs: ref.read(loginDetailsProvider.notifier),
//                 label: "Email",
//                 name: "email",
//                 // obsecure: false,
//                 // refT: ref,
//               ),

//               //Password Field
//               Container(
//                 padding: EdgeInsets.only(
//                   bottom: kPadding.h,
//                 ),
//                 child: TextFormField(
//                   obscureText: true,
//                   initialValue: "",
//                   // maxLines: lines == null ? null : lines,
//                   style: const TextStyle(
//                     color: blackColor,
//                   ),
//                   // obscureText: obText,
//                   decoration: const InputDecoration(
//                     hintText: "label",
//                     hintStyle: TextStyle(
//                       color: Colors.grey,
//                     ),
//                     fillColor: whiteColor,
//                     // border: InputBorder.none,
//                     enabledBorder: UnderlineInputBorder(
//                       borderSide: BorderSide(
//                         color: blackColor,
//                       ),
//                     ),
//                     focusedBorder: UnderlineInputBorder(
//                       borderSide: BorderSide(
//                         color: blackColor,
//                       ),
//                     ),
//                     // fillColor: whiteColor,
//                   ),
//                   onChanged: (value) {
//                     ref.read(loginDetailsProvider.notifier).state["password"] =
//                         value;
//                   },
//                 ),
//               ),
//               // CustomTextField(
//               //   refs: ref.read(loginDetailsProvider.notifier),
//               //   label: "Password",
//               //   name: "password",
//               //   obsecure: true,
//               // ),

//               //
//               state
//                   ? CircularProgressIndicator()
//                   : ElevatedButton(
//                       onPressed: () {
//                         // replaceRouteTo("/homepage", context);
//                         // handleSumbit();
//                         // log("${loginDetails}");
//                         handleSumbit();
//                       },
//                       style: ButtonStyle(
//                         backgroundColor: MaterialStateProperty.all(blueColor),
//                       ),
//                       child: Text("Login"),
//                     ),
//               TextButton(
//                 onPressed: () {
//                   replaceRouteTo("/signup", context);
//                 },
//                 child: Text("Need an account? Signup"),
//               )
//             ],
//           ),
//         ),
//       ),
//       isAdmin: false,
//       bottomNavBar: BottomNavBar(showBottomNavBar: false),
//     );
//   }
// }
