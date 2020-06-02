import 'package:angular/angular.dart';
import 'package:angular_app/src/dashboards/student_dashboard_component/assignment_component/service/assignment_service.dart';

@Component(
  selector: 'assignment-component',
  templateUrl: 'assignment_component.html',
  providers: [ClassProvider(AssignmentService)],
)

class AssignmentComponent implements OnInit {

  final AssignmentService _assignmentService;
  AssignmentComponent(this._assignmentService);

  @override
  void ngOnInit(){
    print("Hello");
  }

}