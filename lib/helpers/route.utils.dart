import 'package:auto_route/auto_route.dart';

routeTo(path, context) {
  final router = AutoRouter.of(context);
  router.pushNamed(path);
}

goBack(context) {
  final router = AutoRouter.of(context);
  router.removeLast();
}

replaceRouteTo(path, context) {
  final router = AutoRouter.of(context);
  router.replaceNamed(path);
}

routePush(comp, context) {
  final router = AutoRouter.of(context);
  router.push(comp);
}
