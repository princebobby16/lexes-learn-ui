
import 'package:angular/angular.dart';

@Injectable()
class DatabaseService {
  String dbUrl;
  Map dbRequestData;
  String dbMethod;

  DatabaseService() {
    dbUrl = "";
    dbRequestData = {};
    dbMethod = "";
  }
}