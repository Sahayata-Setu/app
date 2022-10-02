import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:donationapp/features/homepage/homepage.dart';
import 'package:donationapp/features/login/login.dart';
import 'package:donationapp/features/signup/SignUp.dart';

@MaterialAutoRouter(routes: [
  MaterialRoute(page: Signup, path: "/signup"),
  // MaterialRoute(page: Signup, path: "/signup"),
  MaterialRoute(page: HomePage, path: "/homepage", initial: true),
  MaterialRoute(
    page: Login,
    path: "/login",
  ),
])
@CustomAutoRouter(routes: [])
class $AppRouter {}
