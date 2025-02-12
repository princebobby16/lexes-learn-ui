import 'package:angular/angular.dart';
import 'package:angular_router/angular_router.dart';
import 'package:angular_app/app_component.template.dart' as ng;
import 'package:http/browser_client.dart';
import 'package:http/http.dart';
import 'package:pwa/client.dart' as pwa;


import 'main.template.dart' as self;

@GenerateInjector(
  [
    routerProvidersHash,
    ClassProvider(Client, useClass: BrowserClient),
    Provider(pwa.Client, useClass: pwa.Client)
  ]
)

final InjectorFactory injector = self.injector$Injector;

void main() {
  pwa.Client();

  runApp(ng.AppComponentNgFactory, createInjector: injector);
}
