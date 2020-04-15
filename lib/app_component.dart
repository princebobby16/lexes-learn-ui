import 'package:angular/angular.dart';
import 'package:angular_app/src/route_path.dart';
import 'src/navbar_component/navbar_component.dart';
import 'src/signin_component/signin_component.dart';
import 'package:angular_forms/angular_forms.dart';
import 'src/home_component/home_component.dart';

@Component(
  selector: 'my-app',
  templateUrl: 'app_component.html',
  directives: [
    coreDirectives, 
    formDirectives,
    HomeComponent,
    SigninComponent,
    NavbarComponent,
  ],
  exports: [RoutePaths],
)

class AppComponent{}