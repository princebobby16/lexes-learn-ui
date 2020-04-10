import 'package:angular/angular.dart';
import 'package:angular_app/src/route_path.dart';
import 'package:angular_app/src/routes.dart';
import 'package:angular_router/angular_router.dart';

@Component(
  selector: 'nav-app',
  templateUrl: 'navbar_component.html',
  directives: [
    coreDirectives, 
    routerDirectives,
  ],
  exports: [Routes, RoutePaths]
)
class NavbarComponent {
  
}