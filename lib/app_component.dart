// Copyright (c) 2017, Suresh. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import 'package:angular2/core.dart';
import 'package:angular2_components/angular2_components.dart';
import 'package:recaptcha_ng2dart/hello_dialog/hello_dialog.dart';
import 'package:recaptcha_ng2dart/recaptcha/angular_recaptcha.dart';

@Component(
  selector: 'my-app',
  styleUrls: const ['app_component.css'],
  templateUrl: 'app_component.html',
  directives: const [materialDirectives, HelloDialog, AngularRecaptcha],
  providers: const [materialProviders],
)
class AppComponent {

  String _value;

  String error = "";

  @ViewChild('myDialog')
  HelloDialog dialog;

  String get value => _value;

  void set value(String v) {
    _value = v;
    error = "";
  }

  void onSubmit() {
    print("Value: $value");
    if (value?.isEmpty ?? true) {
      error = "Please validate reCaptcha!!";
    } else {
      dialog.open();
    }
  }
}
