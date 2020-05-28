

import 'package:angular_app/src/dashboards/teacher_dashboard_component/route_paths.dart';
import 'package:angular_router/angular_router.dart';
import 'package:angular_app/src/dashboards/teacher_dashboard_component/chat_component/chat_component.template.dart' as chat_template;
import 'package:angular_app/src/dashboards/teacher_dashboard_component/home_component/home_component.template.dart' as home_template;
import 'package:angular_app/src/dashboards/teacher_dashboard_component/start_class_component/start_class_component.template.dart' as start_class_template;
import 'package:angular_app/src/dashboards/teacher_dashboard_component/post_assignment_component/post_assignment_component.template.dart' as post_assignment_template;

export 'package:angular_app/src/dashboards/teacher_dashboard_component/route_paths.dart';

class Routes{
  static final home = RouteDefinition(
    routePath: RoutePaths.home,
    component: home_template.HomeComponentNgFactory,
    useAsDefault: true,
  );

  static final start_class = RouteDefinition(
    routePath: RoutePaths.start_class,
    component: start_class_template.StartClassComponentNgFactory,
  );
  
  static final chat = RouteDefinition(
    routePath: RoutePaths.chat,
    component: chat_template.ChatComponentNgFactory,
  );

  static final post_assignments = RouteDefinition(
    routePath: RoutePaths.post_assignment,
    component: post_assignment_template.PostAssignmentComponentNgFactory,
  );

  static final all = <RouteDefinition>[
    home,
    start_class,
    chat,
    post_assignments
  ];
}