import 'package:angular/angular.dart';
import 'package:angular_app/src/services/database_service.dart';

@Component(
  selector: 'classroom-app',
  templateUrl: 'classroom_component.html',
  styleUrls: ['classroom_component.css'],
  directives: [
    coreDirectives,
  ],
  providers: [DatabaseService]
)

class ClassroomComponent{
  final DatabaseService databaseService;

  ClassroomComponent(DatabaseService this.databaseService);
}