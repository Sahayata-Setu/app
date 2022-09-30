import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:expensetracker/features/homepage/homepage.dart';
import 'package:expensetracker/features/signup/SignUp.dart';

@MaterialAutoRouter(routes: [
  MaterialRoute(page: Signup, initial: true),
  MaterialRoute(page: HomePage, path: "/homepage"),
])
@CustomAutoRouter(routes: [])
class $AppRouter {}
