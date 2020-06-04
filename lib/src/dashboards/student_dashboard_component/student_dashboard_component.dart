import 'dart:html';

import 'package:angular/angular.dart';
import 'package:angular_app/src/dashboards/student_dashboard_component/home_component/home_component.dart';
import 'package:angular_app/src/dashboards/student_dashboard_component/routes.dart';
import 'package:angular_components/angular_components.dart';
import 'package:angular_router/angular_router.dart';

import 'dart:async';

import 'package:stagexl/stagexl.dart';

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
    HomeComponent,
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
    print("Chat");
    _router.navigate(RoutePaths.chat.toUrl());
  }
  
  Future<void> goHome() async  {
    print("Home");
    _router.navigate(RoutePaths.home.toUrl());
  }
  
  Future<void> gotoAssignment() async {
    print("assignment");
     _router.navigate(RoutePaths.assignments.toUrl());
  }
  
  Future<void> gotoJoinClass() async  {
    print("Class");
    _router.navigate(RoutePaths.join_class.toUrl());
  }
  
}
