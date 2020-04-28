
import 'package:angular_app/src/route_path.dart' as _parent;
import 'package:angular_router/angular_router.dart';
export 'package:angular_app/src/route_path.dart';

class RoutePaths{
  static final classroom = RoutePath(path: 'classroom', parent: _parent.RoutePaths.dashboard);
  static final home = RoutePath(path: 'home', parent: _parent.RoutePaths.dashboard);
}