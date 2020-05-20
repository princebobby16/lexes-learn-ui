import 'dart:html';

import 'package:angular/angular.dart';
//import 'package:angular_app/src/dashboards/student_dashboard_component/classroom_component/directives/vu_hold_focus.dart';
//import 'package:angular_app/src/dashboards/student_dashboard_component/classroom_component/directives/vu_scroll_down.dart';
import 'package:angular_components/angular_components.dart';

@Component(
    selector: 'chat-app',
    templateUrl: 'chat_component.html',
    styleUrls: [
      'chat_component.css',
      'package:angular_components/app_layout/layout.scss.css'
    ],
    directives: [
      coreDirectives,
      MaterialIconComponent,
      MaterialInputComponent,
      MaterialButtonComponent,
//      VuHoldFocus,
//      VuScrollDown,
    ],
    providers: [
      materialProviders
    ]
)

class ChatComponent implements OnInit {
  String message = "Hello World";

  @ViewChild('textInput')
  MaterialInputComponent textInput;

  String inputText = "";

  void sendTextMessage() {
    if(textInput?.inputText?.trim()?.isNotEmpty == true){
      textInput?.inputText = "";
    }
  }

  void sendImageMessage(FileList files) {
    if (files.isNotEmpty) {
      print(files);
    }
  }

  @override
  void ngOnInit() {
    print("websocket");
  }
}