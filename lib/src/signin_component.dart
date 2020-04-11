import 'package:angular/angular.dart';
import 'package:angular_app/src/login_details.dart';
import 'package:angular_forms/angular_forms.dart';

const List<String> _accounts = [
  'Teacher',
  'Student'
];

@Component(
  selector: 'signin-app',
  templateUrl: 'signin_component.html',
  styleUrls: ['signin_component.css'],
  directives: [formDirectives, coreDirectives],
)
class SigninComponent{
  Login login = Login("pbobby001@st.ug.edu.gh", "blahblahblah", _accounts[0]);

  bool submitted = false;

  List<String> get accounts => _accounts;

  void onSubmit(){
    submitted = true;
  }

}