import 'package:auto_route/auto_route.dart';

import '../page/home_page.dart';
import '../page/login_page.dart';

part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        // initial route is named "/"
        AutoRoute(page: HomeRoute.page, initial: true),
        AutoRoute(page: LoginRoute.page),
      ];
}
