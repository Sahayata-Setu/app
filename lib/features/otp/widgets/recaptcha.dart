import 'package:captcha_solver/captcha_solver.dart';
import 'package:donationapp/constant/common/Text/custom-text.dart';
import 'package:donationapp/helpers/route.utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:webview_flutter_plus/webview_flutter_plus.dart';

class Recaptcha extends StatefulWidget {
  const Recaptcha({super.key});

  @override
  State<Recaptcha> createState() => _RecaptchaState();
}

class _RecaptchaState extends State<Recaptcha> {
  @override
  Widget build(BuildContext context) {
    // void captcha() async {
    //   /// Initiate query Properties
    //   String apiKey = '6LdeAW8kAAAAAI3bcrkbb5OY-E56VQtseVw83DR9';
    //   String websiteURL =
    //       'http://sahayatasetu.firebaseapp.com/recaptcha/test.php';
    //   String websiteKey = '6LdeAW8kAAAAAIRBtoDAIzdSXthyKZjwvLLYHNYJ';

    //   /// Initiate CaptchaSolver
    //   CaptchaSolver captchaSolver = CaptchaSolver(apiKey);

    //   /// Example of the request
    //   Map inputs = {
    //     "clientKey": apiKey,
    //     "task": {
    //       "type": "RecaptchaV2TaskProxyless",
    //       "websiteURL": websiteURL,
    //       "websiteKey": websiteKey,
    //       "isInvisible": false
    //     }
    //   };

    //   /// Get captcha solution
    //   Map response = await captchaSolver.recaptcha(inputs);
    //   print('response: $response');
    //   if (response['status'] == 'ready') {
    //     print(response['solution']['gRecaptchaResponse']);
    //   }
    // }

    // return Scaffold(
    //   body: SafeArea(
    //       child: Center(
    //     child: GestureDetector(
    //       onTap: () {
    //         captcha();
    //       },
    //       child: CustomText(
    //         text: "Click",
    //       ),
    //     ),
    //   )),
    // );

    return Scaffold(
      body: Center(
        child: WebViewPlus(
          javascriptMode: JavascriptMode.unrestricted,
          onWebViewCreated: ((controller) {
            controller.loadUrl('assets/webpages/recaptcha.html');
          }),
          javascriptChannels: Set.from([
            JavascriptChannel(
                name: 'Captcha',
                onMessageReceived: (JavascriptMessage message) {
                  replaceRouteTo("/mobile-number", context);
                })
          ]),
        ),
      ),
    );
  }
}
