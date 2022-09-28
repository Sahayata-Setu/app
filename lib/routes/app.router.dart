import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:expensetracker/features/signup/presentation/organism/signup.dart';

@MaterialAutoRouter(routes: [
  MaterialRoute(page: SignUp, initial: true),
])
@CustomAutoRouter(routes: [])
class $AppRouter {}
