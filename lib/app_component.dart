import 'package:angular/angular.dart';
import 'package:angular_app/src/navbar_component.dart';
import 'package:angular_app/src/register_component.dart';
import 'package:angular_app/src/signin_component.dart';
import 'package:angular_forms/angular_forms.dart';
import 'src/home_component.dart';
import 'src/navbar_component.dart';

@Component(
  selector: 'my-app',
  templateUrl: 'app_component.html',
  directives: [
    coreDirectives, 
    formDirectives,
    HomeComponent,
    SigninComponent,
    RegisterComponent,
    NavbarComponent,
  ],
)

class AppComponent{
  String title = "Lexes Company Limited";

}