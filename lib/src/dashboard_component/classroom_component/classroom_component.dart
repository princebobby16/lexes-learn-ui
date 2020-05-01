import 'dart:html';

import 'package:angular/angular.dart';
import 'package:angular_app/src/dashboard_component/classroom_component/directives/vu_hold_focus.dart';
import 'package:angular_app/src/dashboard_component/classroom_component/directives/vu_scroll_down.dart';
import 'package:angular_app/src/dashboard_component/classroom_component/services/lexes_chat_service.dart';
import 'package:angular_components/angular_components.dart';


@Component(
  selector: 'classroom-app',
  templateUrl: 'classroom_component.html',
  styleUrls: ['classroom_component.css', 'package:angular_components/app_layout/layout.scss.css'],
  directives: [
    coreDirectives,
    MaterialIconComponent,
    MaterialInputComponent,
    MaterialButtonComponent,
    VuHoldFocus,
    VuScrollDown,
  ],
  providers: [LexesChatService, materialProviders]
)


class ClassroomComponent{
  final LexesChatService _lexesChatService;

  @ViewChild('textInput')
  MaterialInputComponent textInput;

  String inputText = "";

  ClassroomComponent(this._lexesChatService){}

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
}