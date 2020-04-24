import 'package:angular/angular.dart';
import 'package:angular_components/angular_components.dart';

@Component(
  selector: 'dashboard-app',
  templateUrl: 'dashboard_component.html',
  styleUrls: [
    'dashboard_component.css',
    'package:angular_components/app_layout/layout.scss.css',
  ],
  directives: [
    coreDirectives,
    DeferredContentDirective, 
    MaterialPersistentDrawerDirective,
    MaterialTemporaryDrawerComponent,
    MaterialButtonComponent,
    MaterialIconComponent,
    MaterialListComponent,
    MaterialListItemComponent,
    MaterialToggleComponent,
  ], 
)
class DashboardComponent{
  bool customWidth = false;
  bool end = false;
  bool overlay = false;
}