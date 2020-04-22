import 'package:angular/angular.dart';
import 'package:angular_app/src/route_path.dart';
import 'package:angular_app/src/routes.dart';
import 'package:angular_forms/angular_forms.dart';
import 'package:angular_router/angular_router.dart';

@Component(
  selector: 'my-app',
  templateUrl: 'app_component.html',
  directives: [coreDirectives, formDirectives, routerDirectives],
  exports: [RoutePaths, Routes],
)

class AppComponent{}