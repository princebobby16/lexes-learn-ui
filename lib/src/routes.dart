import 'package:angular_router/angular_router.dart';
import 'home_component/home_component.template.dart' as home_template;
import 'signin_component/signin_component.template.dart' as signin_template;
import 'dashboards/student_dashboard_component/student_dashboard_component.template.dart' as student_dashboard_template;
import 'dashboards/teacher_dashboard_component/teacher_dashboard_component.template.dart' as teacher_dashboard_template;

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
  static final student_dashboard = RouteDefinition(
    routePath: RoutePaths.student_dashboard,
    component: student_dashboard_template.StudentDashboardComponentNgFactory,
  );

  // Dont forget to edit the component
  static final teacher_dashboard = RouteDefinition(
    routePath: RoutePaths.teacher_dashboard,
    component: teacher_dashboard_template.TeacherDashboardComponentNgFactory,
  );
  
  //edited
  static final all = <RouteDefinition> [  
    home,
    signin,
    student_dashboard,
    teacher_dashboard,
  ];

}