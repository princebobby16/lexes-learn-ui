
import 'dart:convert';
import 'dart:html';

import 'package:angular/angular.dart';
import 'package:angular_forms/angular_forms.dart';
import 'package:http/http.dart' as http;

@Component(
  selector: 'user-home',
  templateUrl: 'home_component.html',
  directives: [coreDirectives, formDirectives]
)

class HomeComponent implements OnInit {
  
  // var announcements;

  List anns;

  @override
  void ngOnInit() async {
    print("Hello");

    var  token = window.localStorage["token"];

    print(token);

    Map request = {
      "token": token,
    };
    
    try {
      var url = "http://localhost:8000/announcement";
      var response = await http.post(
        url,
        headers: {
            "Content-type":"application/json; charset=UTF-8"
          },
          body: json.encode(request),
      );

      anns = json.decode(response.body);

      // title = announcement["title"];
      // content = announcement["content"];
      // date = announcement["due_date"];

      print(anns);

    }catch (e) {
      print(e);
    }
  }

}