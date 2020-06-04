
import 'dart:convert';
import 'dart:html';

import 'package:angular/angular.dart';
import 'package:angular_forms/angular_forms.dart';
import 'package:angular_modern_charts/angular_modern_charts.dart';
import 'package:http/http.dart' as http;

@Component(
  selector: 'user-home',
  templateUrl: 'home_component.html',
  directives: [
    coreDirectives,
    formDirectives,
    LineChartComponent,
  ]
)

class HomeComponent implements OnInit {

  List anns;

  final lineChartData = LineChartData([
    'Expected',
    'Result',
    // 'January',
    // 'January'
    ], [
    LineChartPointData('January', [10, 20]),
    LineChartPointData('February', [30, 40]),
    LineChartPointData('March', [20, 40]),
    LineChartPointData('April', [30, 60]),
    LineChartPointData('May', [60, 40]),
    LineChartPointData('June', [90, 40]),
    LineChartPointData('July', [30, 50]),
    LineChartPointData('August', [30, 40]),
    LineChartPointData('September', [70, 40]),
    LineChartPointData('October', [30, 60]),
    LineChartPointData('November', [30, 40]),
    LineChartPointData('December', [60, 95]),
  ]);

  final lineChartProperties = LineChartProperties()
    ..height = '400px'
    ..xAxis.title.text = 'Month'
    ..yAxis.title.text = 'Test Score'
    ..yAxis.minValue = 0;


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