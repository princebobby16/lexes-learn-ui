

import 'package:angular_app/src/dashboards/student_dashboard_component/route_paths.dart';
import 'package:angular_router/angular_router.dart';
import 'package:angular_app/src/dashboards/student_dashboard_component/classroom_component/classroom_component.template.dart' as classroom_template;
import 'package:angular_app/src/dashboards/student_dashboard_component/home/home_component.template.dart' as home_template;

export 'package:angular_app/src/dashboards/student_dashboard_component/route_paths.dart';


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