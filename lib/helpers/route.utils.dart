import 'package:auto_route/auto_route.dart';

routeTo(path, context) {
  final router = AutoRouter.of(context);
  router.navigateNamed(path);
}

goBack(context) {
  final router = AutoRouter.of(context);
  router.navigateBack();
}

pop(context) {
  AutoRouter.of(context).pop();
}

replaceRouteTo(path, context) {
  final router = AutoRouter.of(context);
  router.replaceNamed(path);
}

replaceAllRouteTo(route, context) {
  final router = AutoRouter.of(context);
  router.replaceAll(route);
}

navigateNamed(path, context) {
  final router = AutoRouter.of(context);
  router.navigateNamed(path);
}

routePush(comp, context) {
  final router = AutoRouter.of(context);
  router.navigate(comp);
}
