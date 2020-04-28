
import 'package:angular_app/src/dashboard_component/home/home_component.template.dart' as home_template;

import 'route_paths.dart';
import 'package:angular_router/angular_router.dart';
import 'package:angular_app/src/dashboard_component/classroom_component/classroom_component.template.dart' as classroom_template;

export 'route_paths.dart';

class Routes{
  static final classroom = RouteDefinition(
    routePath: RoutePaths.classroom,
    component: classroom_template.ClassroomComponentNgFactory,
  );

  static final news_feed = RouteDefinition(
    routePath: RoutePaths.home,
    component: home_template.HomeComponentNgFactory,
    useAsDefault: true,
  );

  static final all = <RouteDefinition>[
    classroom,
    news_feed
  ];
}