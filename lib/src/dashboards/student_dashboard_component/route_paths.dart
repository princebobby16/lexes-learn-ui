
import 'package:angular_app/src/route_path.dart' as _parent;
import 'package:angular_router/angular_router.dart';
export 'package:angular_app/src/route_path.dart';

class RoutePaths{
  static final chat = RoutePath(path: 'chat', parent: _parent.RoutePaths.student_dashboard);
  static final home = RoutePath(path: 'home', parent: _parent.RoutePaths.student_dashboard);
  static final join_class = RoutePath(path: 'join_class', parent: _parent.RoutePaths.student_dashboard);
  static final assignments = RoutePath(path: 'assignment', parent: _parent.RoutePaths.student_dashboard);
}