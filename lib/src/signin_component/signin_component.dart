import 'dart:convert';
import 'dart:html';

import 'package:angular/angular.dart';
import 'package:angular_app/src/login_details.dart';
import 'package:angular_app/src/route_path.dart';
import 'package:angular_forms/angular_forms.dart';
import 'package:angular_router/angular_router.dart';
import 'package:http/http.dart' as http;

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

      try {

        var response = await http.post(
          url,
          headers: {
            "Content-type":"application/json; charset=UTF-8"
          },
          body: json.encode(loginData)
        );
        
        var resp = json.decode(response.body);
        
        // print(resp["token"]);

        var token = resp["token"];
        window.localStorage["token"] = token;

      _router.navigate(RoutePaths.student_dashboard.toUrl());

      } catch (e) {
        print(e);
      }
    }else if(account_type == "Teacher"){
      url = "http://localhost:8000/users/teacher/login";
      try {

        var response = await http.post(
          url,
          headers: {
            "Content-type":"application/json; charset=UTF-8"
          },
          body: json.encode(loginData)
        );
        
        var resp = json.decode(response.body);
        
        // print(resp["token"]);

        var token = resp["token"];
        window.localStorage["token"] = token;

      _router.navigate(RoutePaths.student_dashboard.toUrl());

      } catch (e) {
        print(e);
      }
    }

    return true;
  }

}