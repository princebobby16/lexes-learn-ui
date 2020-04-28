import 'package:angular/angular.dart';
import 'package:angular_app/src/dashboard_component/classroom_component/classroom_component.dart';
import 'package:angular_app/src/dashboard_component/route_paths.dart';
import 'package:angular_app/src/dashboard_component/routes.dart';
import 'package:angular_components/angular_components.dart';
import 'package:angular_router/angular_router.dart';

import 'dart:async';

@Component(
  selector: 'dashboard-app',
  templateUrl: 'dashboard_component.html',
  styleUrls: [
    'dashboard_component.css',
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
class DashboardComponent implements OnActivate {
  bool customWidth = false;
  bool end = false;
  bool overlay = false;
  Router _router;

  DashboardComponent(this._router);

  @override
  void onActivate(_, RouterState current) async {
    print('CrisisComponent: onActivate: ${_?.toUrl()} -> ${current?.toUrl()}');

  }

  Future<void> gotoChat() async {
    print("Classroom");
    _router.navigate(RoutePaths.classroom.toUrl());
  } 
  Future<void> goHome() async  {
    print("Home");
    _router.navigate(RoutePaths.home.toUrl());
  }

}
