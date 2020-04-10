import 'package:angular_router/angular_router.dart';
import 'home_component.template.dart' as home_template;
import 'signin_component.template.dart' as signin_template;
import 'register_component.template.dart' as register_template;
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
  static final register = RouteDefinition(
    routePath: RoutePaths.register,
    component: register_template.RegisterComponentNgFactory,
  );
  //edited
  static final all = <RouteDefinition> [  
    home,
    signin,
    register,
  ];

}