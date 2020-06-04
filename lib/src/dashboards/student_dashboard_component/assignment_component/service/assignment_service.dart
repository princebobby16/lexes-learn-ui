
import 'package:angular_app/src/dashboards/student_dashboard_component/assignment_component/assignment.dart';
import 'package:angular_app/src/dashboards/student_dashboard_component/assignment_component/mock_assignments.dart';

class AssignmentService {
  List<Assignment> getAll() => mockAssignments;
}