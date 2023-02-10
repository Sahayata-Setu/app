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
    return WebViewPlus(
      javascriptMode: JavascriptMode.unrestricted,
      onWebViewCreated: ((controllerPlus) {
        controllerPlus.loadUrl("assets/webpages/recaptcha.html");
      }),
    );
  }
}
