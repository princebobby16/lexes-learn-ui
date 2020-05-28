import 'package:angular_router/angular_router.dart';
import 'package:angular_app/src/route_path.dart' as _parent;

class RoutePaths {
  static final home = RoutePath(path: 'home', parent: _parent.RoutePaths.teacher_dashboard);
  static final start_class = RoutePath(path: 'start_class', parent: _parent.RoutePaths.teacher_dashboard);
  static final chat = RoutePath(path: 'chat', parent: _parent.RoutePaths.teacher_dashboard);
  static final post_assignment = RoutePath(path: 'post_assignment', parent: _parent.RoutePaths.teacher_dashboard);
}