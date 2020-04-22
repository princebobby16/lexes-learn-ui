import 'dart:convert';
import 'dart:html';

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
  directives: [formDirectives, coreDirectives],
)

class SigninComponent{
  Login login = Login("", "", _accounts[0]);

  List<String> get accounts => _accounts;

  Future<bool> signIn(String username, String password, String account_type) async {
    username.trim();

    if (username.isEmpty || password.isEmpty || account_type.isEmpty){
      print("Empty body");
      return false;
    }

    // Convert to object
    Map loginData={
      "username":username,
      "password":password,
    };

    print(loginData);

    // Send to server
    HttpRequest.request(
        'http://localhost:8000/users/student/login',
        method: 'POST',
        sendData: json.encode(loginData),
        requestHeaders: {
          'Content-Type': 'application/json; charset=UTF-8'
        }
    )
        .then((resp) {
      print(resp.responseUrl);
      print(resp.responseText);
    });
    return true;
  }

}