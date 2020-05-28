import 'package:angular/angular.dart';
import 'package:angular_components/angular_components.dart';
import 'package:angular_components/utils/browser/dom_service/angular_2.dart';
import 'package:angular_components/utils/browser/window/module.dart';

@Component(
    selector: 'chat-app',
    templateUrl: 'chat_component.html',
    styleUrls: [
      'chat_component.css',
    ],
    directives: [
      coreDirectives,
      MaterialIconComponent,
      MaterialInputComponent,
      MaterialButtonComponent,
      MaterialToggleComponent,
      FixedMaterialTabStripComponent,
      NgFor,
    ],
    providers: [
      materialProviders,
      domServiceBinding,
      rtlProvider,
      windowBindings,
    ]
)

class ChatComponent {
  int tabIndex = 0;
  int tabIndex2 = 0;
  bool stopChange = false;

  void onTabChange(TabChangeEvent event) {
    tabIndex = event.newIndex;
  }

  void onBeforeTabChange(TabChangeEvent event) {
    if (stopChange) {
      event.preventDefault();
    }
  }

  final tabLabels = const <String>[
    'Chat',
    'Teachers',
    'Student'
  ];
  final centeredTabLabels = const <String>['Tab 1 with a long name', 'Tab 2'];
}