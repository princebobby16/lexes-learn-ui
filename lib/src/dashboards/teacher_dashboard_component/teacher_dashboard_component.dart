
import 'dart:html';

import 'package:angular/angular.dart';
import 'package:angular_app/src/dashboards/teacher_dashboard_component/routes.dart';
import 'package:angular_components/angular_components.dart';
import 'package:angular_router/angular_router.dart';

@Component(
  selector: 'teacher-dashboard-app',
  templateUrl: 'teacher_dashboard_component.html',
  styleUrls: [
    'teacher_dashboard_component.css',
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
    routerDirectives
  ],
  exports: [RoutePaths, Routes]
)

class TeacherDashboardComponent implements CanActivate {
  bool customWidth = false;
  bool end = false;
  bool overlay = false;
  Router _router;

  TeacherDashboardComponent(this._router);

  Future<void> goHome() async {
    print("Home");
    _router.navigate(RoutePaths.home.toUrl());
  } 
  Future<void> gotoStartClass() async {
    print("Start class");
    _router.navigate(RoutePaths.start_class.toUrl());
  }
  Future<void> gotoChat() async {
    print("Chat");
    _router.navigate(RoutePaths.chat.toUrl());
  } 
  Future<void> gotoPostAssignments() async {
    print("Post assignment");
    _router.navigate(RoutePaths.post_assignment.toUrl());
  }

  @override
  Future<bool> canActivate(RouterState current, RouterState next) async {
    
    if(window.localStorage.containsKey('token')) {
      // Found token
      return true;
    }

    _router.navigateByUrl('signin');
    return false;
  }
}