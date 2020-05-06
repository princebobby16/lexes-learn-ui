import 'package:angular/angular.dart';
import 'package:angular_app/src/dashboards/student_dashboard_component/classroom_component/classroom_component.dart';
import 'package:angular_app/src/dashboards/student_dashboard_component/routes.dart';
import 'package:angular_components/angular_components.dart';
import 'package:angular_router/angular_router.dart';

import 'dart:async';

@Component(
  selector: 'student_dashboard-app',
  templateUrl: 'student_dashboard_component.html',
  styleUrls: [
    'student_dashboard_component.css',
    'package:angular_components/app_layout/layout.scss.css',
  ],
  directives: [
    coreDirectives,
    DeferredContentDirective, 
    MaterialPersistentDrawerDirective,
    MaterialTemporaryDrawerComponent,
    MaterialButtonComponent,
    MaterialIconComponent,
    MaterialListComponent,
    MaterialListItemComponent,
    MaterialToggleComponent,
    ClassroomComponent,
    routerDirectives
  ], 
  exports: [RoutePaths, Routes]
)
class StudentDashboardComponent {
  bool customWidth = false;
  bool end = false;
  bool overlay = false;
  Router _router;

  StudentDashboardComponent(this._router);

  Future<void> gotoChat() async {
    print("Classroom");
    _router.navigate(RoutePaths.classroom.toUrl());
  } 
  Future<void> goHome() async  {
    print("Home");
    _router.navigate(RoutePaths.home.toUrl());
  }

}
