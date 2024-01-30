import 'package:auto_route/auto_route.dart';
import 'package:auth_test/src/core/routes/app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: LoginRoute.page, initial: true),
        AutoRoute(page: ConfirmationRoute.page),
      ];
}