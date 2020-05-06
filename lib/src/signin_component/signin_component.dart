import 'dart:convert';
import 'dart:html';

import 'package:angular/angular.dart';
import 'package:angular_app/src/login_details.dart';
import 'package:angular_app/src/route_path.dart';
import 'package:angular_forms/angular_forms.dart';
import 'package:angular_router/angular_router.dart';

const List<String> _accounts = [
  'Teacher',
  'Student'
];

@Component(
  selector: 'signin-app',
  templateUrl: 'signin_component.html',
  directives: [formDirectives, coreDirectives],
)

class SigninComponent {
  Login login = Login("", "", _accounts[0]);
  final Router _router;

  SigninComponent(this._router);

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

    String url = "";

    if(account_type == "Student"){
      url = "http://localhost:8000/users/student/login";
    }else if(account_type == "Teacher"){
      url = "http://localhost:8000/users/teacher/login";
    }

    print(loginData);

    // var response;

    // Send to server
    HttpRequest.request(
        url,
        method: 'POST',
        sendData: json.encode(loginData),
        requestHeaders: {
          'Content-Type': 'application/json; charset=UTF-8'
        }
    )
        .then((resp) {
      print(resp.responseUrl);
      print(resp.responseText);

      // Store in local storage
      // window.localStorage.addAll(token);

      if (account_type == "Student") {
        _router.navigate(RoutePaths.student_dashboard.toUrl());
      } else if (account_type == "Teacher") {
        _router.navigate(RoutePaths.teacher_dashboard.toUrl());
      }

    });
    return true;
  }

}