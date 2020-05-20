

import 'package:angular_app/src/dashboards/student_dashboard_component/route_paths.dart';
import 'package:angular_router/angular_router.dart';
import 'package:angular_app/src/dashboards/student_dashboard_component/chat_component/chat_component.template.dart' as classroom_template;
import 'package:angular_app/src/dashboards/student_dashboard_component/home_component/home_component.template.dart' as home_template;
import 'package:angular_app/src/dashboards/student_dashboard_component/join_class_component/join_class_component.template.dart' as join_class_template;
import 'package:angular_app/src/dashboards/student_dashboard_component/assignment_component/assignment_component.template.dart' as assignment_template;

export 'package:angular_app/src/dashboards/student_dashboard_component/route_paths.dart';


class Routes{
  static final chat = RouteDefinition(
    routePath: RoutePaths.chat,
    component: classroom_template.ChatComponentNgFactory,
  );

  static final home = RouteDefinition(
    routePath: RoutePaths.home,
    component: home_template.HomeComponentNgFactory,
    useAsDefault: true,
  );
  static final join_class = RouteDefinition(
    routePath: RoutePaths.join_class,
    component: join_class_template.JoinClassComponentNgFactory,
  );

   static final assignment = RouteDefinition(
     routePath: RoutePaths.assignments,
     component: assignment_template.AssignmentComponentNgFactory,
   );

  static final all = <RouteDefinition>[
    chat,
    home,
    join_class,
    assignment
  ];
}