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
  styleUrls: ['signin_component.css'],
  directives: [formDirectives, coreDirectives],
)
class SigninComponent{
  Login login = Login("", "", _accounts[0]);

  bool submitted = false;

  List<String> get accounts => _accounts;

  void onSubmit(){
    submitted = true;
  }

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
      "account_type":account_type,
    };

    print(loginData);

    // Send to server
    HttpRequest.request(
        'http://localhost:8000/users/login',
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
  }

}