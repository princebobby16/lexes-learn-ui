import 'package:angular_router/angular_router.dart';
import 'home_component/home_component.template.dart' as home_template;
import 'signin_component/signin_component.template.dart' as signin_template;
import 'dashboard_component/dashboard_component.template.dart' as dashboard_template;
import 'route_path.dart';
export 'routes.dart';


class Routes{
  static final home = RouteDefinition(
    routePath: RoutePaths.home,
  component: home_template.HomeComponentNgFactory,
  useAsDefault: true,

  );
  static final signin = RouteDefinition(
    routePath: RoutePaths.signin,
    component: signin_template.SigninComponentNgFactory,
  );
  static final dashboard = RouteDefinition(
    routePath: RoutePaths.dashboard,
    component: dashboard_template.DashboardComponentNgFactory,
  );
  //edited
  static final all = <RouteDefinition> [  
    home,
    signin,
    dashboard
  ];

}