import 'package:angular/angular.dart';
import 'package:angular_app/src/lexes_component/register_component/register_component.dart';
import 'package:angular_app/src/lexes_component/signin_component/signin_component.dart';
import 'package:angular_forms/angular_forms.dart';
import 'src/lexes_component/home_component/home_component.dart';

@Component(
  selector: 'my-app',
  templateUrl: 'app_component.html',
  directives: [
    coreDirectives, 
    formDirectives,
    HomeComponent,
    SigninComponent,
    RegisterComponent,
  ],
)

class AppComponent{
  String title = "Lexes Company Limited";

}